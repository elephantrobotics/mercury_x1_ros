import serial
import json
import time
import re

# 串口参数配置
port = '/dev/ttyACM0'  # 请根据实际串口设备修改
baudrate = 115200      # 波特率 115200
bytesize = serial.EIGHTBITS  # 数据位 8
parity = serial.PARITY_NONE  # 奇偶校验 无
stopbits = serial.STOPBITS_ONE  # 停止位 1
timeout = 1          # 读取超时时间

# 初始化串口并提示成功
try:
    ser = serial.Serial(
        port=port,
        baudrate=baudrate,
        bytesize=bytesize,
        parity=parity,
        stopbits=stopbits,
        timeout=timeout
    )
    if ser.is_open:
        print(f"Serial port {port} initialized successfully with baudrate {baudrate}.")
except serial.SerialException as e:
    print(f"Failed to initialize serial port: {e}")
    exit(1)

def parse_serial_data():
    buffer = ""

    while True:
        try:
            # 读取所有可用数据，使用 errors='ignore' 忽略无效字节
            byte_data = ser.read_all()
            if byte_data:
                # 将字节数据解码为字符串
                data = byte_data.decode('utf-8', errors='ignore')
                #print(f"Received raw data: {data}")  # 提示收到的数据
                buffer += data  # 将数据添加到缓冲区

                # 正则匹配完整的 JSON 结构
                match = re.search(r'{.*}', buffer)
                if match:
                    json_str = match.group(0)
                    try:
                        # 尝试将匹配到的字符串解析为JSON对象
                        json_data = json.loads(json_str)

                        # 检查JSON数据是否包含 "type": "aiui_event"
                        if "type" in json_data and json_data["type"] == "aiui_event":
                            # 打印抓取的JSON数据
                            print(json.dumps(json_data, indent=4))

                        # 清空缓冲区，准备接收下一条数据
                        buffer = ""

                    except json.JSONDecodeError:
                        print("Incomplete JSON data, waiting for more...")  # 提示JSON数据不完整
                        pass
                else:
                    #print("No complete JSON data detected, accumulating data...")
                    pass
            else:
                #print("No data received from serial port.")  # 没有数据的提示
                pass

            # 加一点延时避免高CPU占用
            time.sleep(0.1)

        except serial.SerialException as e:
            print(f"Error reading serial data: {e}")
            break
        except KeyboardInterrupt:
            print("Stopped by user")
            break

if __name__ == "__main__":
    try:
        parse_serial_data()
    finally:
        ser.close()  # 确保关闭串口
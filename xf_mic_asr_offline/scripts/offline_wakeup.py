import serial
import json
import time
import re

class OfflineWakeup:
    def __init__(self, port='/dev/ttyACM0', baudrate=115200, timeout=1):
        self.port = port
        self.baudrate = baudrate
        self.timeout = timeout
        self.ser = None
        self.buffer = ""

        # 初始化串口
        try:
            self.ser = serial.Serial(
                port=self.port,                 # 请根据实际串口设备修改
                baudrate=self.baudrate,         # 波特率 115200
                bytesize=serial.EIGHTBITS,      # 数据位 8
                parity=serial.PARITY_NONE,      # 奇偶校验 无
                stopbits=serial.STOPBITS_ONE,   # 停止位 1
                timeout=self.timeout            # 读取超时时间
            )
            if self.ser.is_open:
                print(f"Serial port {self.port} initialized successfully with baudrate {self.baudrate}.")
        except serial.SerialException as e:
            print(f"Failed to initialize serial port: {e}")
            raise

    def parse_serial_data(self):
        """
        解析串口数据，寻找唤醒的 JSON 数据。
        """
        while True:
            try:
                # 读取所有可用数据，使用 errors='ignore' 忽略无效字节
                byte_data = self.ser.read_all()
                if byte_data:
                    # 将字节数据解码为字符串
                    data = byte_data.decode('utf-8', errors='ignore')
                    #print(f"Received raw data: {data}")  # 提示收到的数据
                    self.buffer += data  # 将数据添加到缓冲区

                    # 正则匹配完整的 JSON 结构
                    match = re.search(r'{.*}', self.buffer)
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
                            self.buffer = ""

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
    
    def close_serial(self):
        """
        关闭串口连接。
        """
        if self.ser and self.ser.is_open:
            self.ser.close()
            print("Serial port closed.")

if __name__ == "__main__":
    try:
        wakeup = OfflineWakeup()  # 初始化类实例
        wakeup.parse_serial_data()  # 开始解析数据
    finally:
        wakeup.close_serial()  # 确保在退出时关闭串口
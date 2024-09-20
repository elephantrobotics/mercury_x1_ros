import serial
import json
import time
import re
import threading

class OfflineWakeup:
    def __init__(self, port='/dev/ttyACM4', baudrate=115200, timeout=1):
        """
        初始化 OfflineWakeup 类，用于通过串口通信实现离线唤醒功能。

        :param port: 串口端口号，默认值为 '/dev/ttyACM4'
        :param baudrate: 串口通信的波特率，默认值为 115200
        :param timeout: 串口通信的超时时间（秒），默认值为 1 秒
        """
        self.port = port
        self.baudrate = baudrate
        self.timeout = timeout
        self.ser = None
        self.buffer = ""

        # 初始化串口
        try:
            self.ser = serial.Serial(
                port=self.port,                 # 串口设备
                baudrate=self.baudrate,         # 波特率 115200
                bytesize=serial.EIGHTBITS,      # 数据位 8
                parity=serial.PARITY_NONE,      # 奇偶校验 无
                stopbits=serial.STOPBITS_ONE,   # 停止位 1
                timeout=self.timeout            # 读取超时时间
            )
            if self.ser.is_open:
                print(f"Serial port {self.port} initialized successfully with baudrate {self.baudrate}.")        
            self.wakeup_event = threading.Event()  # 用于通知主线程唤醒事件
            self.wakeup_data = None  # 保存唤醒的数据
            self.running = True  # 控制线程的运行状态
            self.thread = threading.Thread(target=self._listen_serial) # 线程监听离线唤醒词
            self.thread.start()
        except serial.SerialException as e:
            print(f"Failed to initialize serial port: {e}")
            raise

    def _listen_serial(self):
        """
        解析串口数据，寻找唤醒的 JSON 数据。
        """
        while self.running:
            try:
                # 读取串口所有可用数据
                byte_data = self.ser.read_all()
                if byte_data:
                    # 将字节数据解码为字符串，使用 errors='ignore' 忽略无效字节
                    data = byte_data.decode('utf-8', errors='ignore')
                    #print(f"Received raw data: {data}")  # 提示收到的数据
                    self.buffer += data  # 将数据添加到缓冲区
                    
                    # 正则匹配完整的 JSON 结构
                    match = re.search(r'{.*}', self.buffer)
                    if match:
                        json_str = match.group(0)
                        try:
                            # 尝试将匹配到的字符串解析为JSON对象字典
                            json_data = json.loads(json_str)

                            # 检查JSON数据是否包含 "type": "aiui_event"
                            if "type" in json_data and json_data["type"] == "aiui_event":
                                # 触发唤醒事件
                                #print(json.dumps(json_data, indent=4))  # 打印抓取的JSON数据
                                self.wakeup_data = json_data  # 保存唤醒数据
                                self.wakeup_event.set()  # 通知主线程
                            self.buffer = ""  # 清空缓冲区
                        
                        except json.JSONDecodeError:
                            pass

                # 加一点延时避免高CPU占用
                time.sleep(0.1)
            except serial.SerialException as e:
                print(f"Error reading serial data: {e}")
                break
            except KeyboardInterrupt:
                print("Stopped by user")
                break

    def get_wakeup_info(self):
        """
        获取唤醒的信息，如果有新数据，则返回唤醒信息，并重置事件状态。
        """
        if self.wakeup_event.is_set():
            self.wakeup_event.clear()  # 重置事件标志
            return self.wakeup_data
        return None

    def close_serial(self):
        """
        关闭串口连接。
        """
        self.running = False
        self.thread.join()
        self.ser.close()

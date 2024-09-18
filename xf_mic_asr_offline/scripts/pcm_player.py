import pyaudio

class PCMPlayer:
    def __init__(self,framerate=16000, channels=1, sampwidth=2):
        """
        PCM 播放类初始化
        :param framerate: 采样率，默认为 16000 Hz
        :param channels: 声道数量，默认为 1 单声道
        :param sampwidth: 每个采样点的字节数，默认为 2 (16位)
        """
        self.framerate = framerate
        self.channels = channels
        self.sampwidth = sampwidth
        self.pa = pyaudio.PyAudio()

    def list_audio_devices(self):
        """列出可用的音频设备"""
        for i in range(self.pa.get_device_count()):
            info = self.pa.get_device_info_by_index(i)
            print(f"Device {i}: {info['name']}")

    def play(self,filename):
        """
        播放指定的 PCM 文件
        :param filename: PCM 文件路径
        """
        try:
            with open(filename, 'rb') as pcm_file:
                # 打开音频流
                stream = self.pa.open(format=self.pa.get_format_from_width(self.sampwidth),
                                      channels=self.channels,
                                      rate=self.framerate,
                                      output=True)

                # 每次读取的帧数
                chunk_size = 1024
                data = pcm_file.read(chunk_size)

                # 播放数据
                while data:
                    stream.write(data)
                    data = pcm_file.read(chunk_size)

                # 停止播放
                stream.stop_stream()
                stream.close()

            print(f"Playback finished for file: {filename}")
        except FileNotFoundError:
            print(f"File {filename} not found.")
        except Exception as e:
            print(f"An error occurred during playback: {e}")

    def __del__(self):
        # 当实例销毁时终止 PyAudio
        self.pa.terminate()

# -*- coding: utf-8 -*-
 
import wave
from pyaudio import PyAudio,paInt16

class Recording():
    def __init__(self):
        """
        初始化录音类
        """
        self.framerate = 16000   # 采样率 16kHz
        self.NUM_SAMPLES = 2000  # 采样点
        self.channels = 1        # 单声道
        self.sampwidth = 2       # 两个字节十六位

    def save_wave_file(self, filename, data): 
        """
        保存 PCM 数据到 WAV 文件
        """
        wf = wave.open(filename, 'wb')   #二进制写入模式
        wf.setnchannels(self.channels)  
        wf.setsampwidth(self.sampwidth)  #两个字节16位
        wf.setframerate(self.framerate)  #帧速率    
        wf.writeframes(b"".join(data))   # 将数据保存到文件
        wf.close()
 
    def start_recording(self,TIME=4, pcm_file ='r818.pcm'):
        """
        开始录音并保存到文件
        """
        pa=PyAudio()
        # 检查录音时长是否在 0 到 60 秒之间
        if not isinstance(TIME, (int, float)) or TIME < 0 or TIME > 60:
            raise ValueError("录音时长必须在 0 到 60 秒之间。")
        stream=pa.open(format=paInt16,
                       channels=self.channels,
                       rate=self.framerate,
                       input=True,
                       frames_per_buffer=self.NUM_SAMPLES)
        audio_buffer = []
        count = 0  

        # 开始录音，录制指定的时间
        while count < TIME * (self.framerate // self.NUM_SAMPLES): 
            string_audio_data=stream.read(self.NUM_SAMPLES) # 每次读完2000个样本数
            audio_buffer.append(string_audio_data)
            recorded_seconds = count * (self.NUM_SAMPLES / self.framerate)
            count+=1
            print(f'Currently recording... {recorded_seconds:.2f} seconds')
        self.save_wave_file(pcm_file,audio_buffer) # 保存录音数据到文件

        # 关闭流和 PyAudio 对象,避免占用系统资源
        stream.stop_stream()
        stream.close()
        pa.terminate()
        print(f"Recording saved to {pcm_file}")

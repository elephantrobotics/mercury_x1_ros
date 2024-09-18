# -*- coding: utf-8 -*-
 
import wave
from pyaudio import PyAudio,paInt16

class Recording():
    def __init__(self,TIME=4, pcm_file ='r818.pcm'):
        self.framerate = 16000   # 采样率 16kHz
        self.NUM_SAMPLES = 2000  # 采样点
        self.channels = 1        # 单声道
        self.sampwidth = 2       # 两个字节十六位
        self.TIME = TIME         # 录音时长（秒）
        self.pcm_file = pcm_file # 保存的文件名
 
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
 
    def start_recording(self):
        """
        开始录音并保存到文件
        """
        pa=PyAudio()
        stream=pa.open(format=paInt16,
                       channels=self.channels,
                       rate=self.framerate,
                       input=True,
                       frames_per_buffer=self.NUM_SAMPLES)
        audio_buffer = []
        count = 0  

        # 开始录音，录制指定的时间
        while count < self.TIME * (self.framerate // self.NUM_SAMPLES): 
            string_audio_data=stream.read(self.NUM_SAMPLES) # 每次读完2000个样本数
            audio_buffer.append(string_audio_data)
            count+=1
            print(f'Currently recording... {count}/{self.TIME * (self.framerate // self.NUM_SAMPLES)}')
        self.save_wave_file(self.pcm_file,audio_buffer) # 保存录音数据到文件

        # 关闭流和 PyAudio 对象,避免占用系统资源
        stream.stop_stream()
        stream.close()
        pa.terminate()
        print(f"Recording saved to {self.pcm_file}")
        
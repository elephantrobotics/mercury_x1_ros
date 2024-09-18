import json
from offline_wakeup import OfflineWakeup
from recording import Recording
from pcm_player import PCMPlayer
# from online_speech_recognition import OnlineSpeechRecognition
# from online_speech_synthesis import OnlineSpeechSynthesis

class SpeechManager:
    def __init__(self):
        self.wakeup = OfflineWakeup(port='/dev/ttyACM0', baudrate=115200) # 初始化串口
        self.recording = Recording(TIME=4, pcm_file='r818.pcm')  # 初始化录音时长（秒）和要保存的录音文件名
        self.player = PCMPlayer(framerate=16000, channels=1, sampwidth=2) # PCM 播放类初始化
        # self.speech_recognition = OnlineSpeechRecognition()
        # self.speech_synthesis = OnlineSpeechSynthesis()

    def run(self):
        while True:
            # 检查是否有新的唤醒信息
            wakeup_info = self.wakeup.get_wakeup_info()
            if  wakeup_info:
                print("Wake word detected!")
                # 处理唤醒信息，例如打印
                # print(json.dumps(wakeup_info, indent=4))  # 打印抓取的JSON数据
                # print(f"Wakeup information: {wakeup_info}")
                print(f"Result: {wakeup_info['content']['result']}")
                print(f"Info: {wakeup_info['content']['info']}")

                self.recording.start_recording()

                # synthesized_audio = self.speech_synthesis.synthesize_text(transcribed_text)
                # print(f"Synthesized Audio: {synthesized_audio}")

                # audio_data = "audio data"
                # transcribed_text = self.speech_recognition.transcribe_audio(audio_data)
                # print(f"Transcribed Text: {transcribed_text}")
                
                self.player.play(filename='r818.pcm')                

if __name__ == "__main__":
    manager = SpeechManager()
    manager.run()
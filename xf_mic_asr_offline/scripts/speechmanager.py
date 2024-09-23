import json
from offline_wakeup import OfflineWakeup
from recording import Recording
from pcm_player import PCMPlayer
from online_speech_recognition import run_speech_recognition
from online_speech_synthesis import run_speech_synthesis

class SpeechManager:
    def __init__(self,
                 APPID,
                 APISecret,
                 APIKey,
                 Recognition_BusinessArgs,
                 Synthesis_BusinessArgs,
                 port='/dev/ttyACM0', 
                 baudrate=115200
                 ):
        """
        SpeechManager 类用于管理语音相关的功能，包括语音唤醒、在线语音识别、在线语音合成、录音和播放 PCM 文件。
        
        参数:
        - APPID: 应用的 APPID,用于 API 调用。
        - APISecret: API 秘钥，用于身份验证。
        - APIKey: API 密钥，用于 API 授权。
        - Recognition_BusinessArgs: 在线语音识别的业务参数，用于指定识别的行为。
        - Synthesis_BusinessArgs: 在线语音合成的业务参数，用于指定合成的行为。
        - port: 串口端口号 (默认值为 '/dev/ttyACM0')，用于离线唤醒功能。
        - baudrate: 串口的波特率 (默认值为 115200)，用于离线唤醒的串口通信。
        
        功能:
        - 通过串口管理语音唤醒设备。
        - 提供在线语音识别和语音合成功能。
        - 录制 PCM 文件并播放录音。
        """
        self.wakeup = OfflineWakeup(port, baudrate) # 初始化串口
        self.recording = Recording()  # 初始化录音
        self.player = PCMPlayer(framerate=16000, channels=1, sampwidth=2) # PCM 播放类初始化
        
        self.transcribed_text = None 
        self.APPID = APPID
        self.APISecret = APISecret
        self.APIKey = APIKey
        self.Recognition_BusinessArgs = Recognition_BusinessArgs
        self.Synthesis_BusinessArgs = Synthesis_BusinessArgs
        
    def online_speech_recognition(self, AudioFile):
        """
        在线语音识别
        :param AudioFile: 录音文件路径
        :return: 识别后的文本
        """
        self.transcribed_text = run_speech_recognition(self.APPID, self.APISecret,
                                                       self.APIKey,
                                                       AudioFile=AudioFile,
                                                       BusinessArgs=self.Recognition_BusinessArgs) 
        speech_text = self.transcribed_text 
        self.transcribed_text =None
        return speech_text
    
    def online_speech_synthesis(self,Text,pcm_file):
        """
        在线语音合成
        :param Text: 待合成的文本
        :param pcm_file: 合成后保存的文件名
        """
        run_speech_synthesis(self.APPID,self.APISecret,
                             self.APIKey,
                             Text=Text,
                             pcm_file=pcm_file,
                             BusinessArgs=self.Synthesis_BusinessArgs)
        
    def play(self,filename):
        """
        播放指定的 PCM 文件
        :param filename: PCM 文件路径
        """
        self.player.play(filename)

    def start_recording(self,TIME, pcm_file):
        """
        设置录音参数并验证输入的录音时长
        
        :param TIME: 录音时长，单位为秒，必须在 0 到 60 秒之间 (默认值为 4 秒)
        :param pcm_file: 保存录音的文件名 (默认文件名为 'r818.pcm')
        """
        self.recording.start_recording(TIME,pcm_file)
        

    def get_wakeup_info(self):
        """
        获取唤醒的信息，如果有新数据，则返回唤醒信息，并重置事件状态。
        """
        wake_result = self.wakeup.get_wakeup_info()
        return wake_result
        
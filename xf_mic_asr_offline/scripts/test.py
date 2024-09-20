from main import SpeechManager
import threading
import time

manager = SpeechManager()

thread = threading.Thread(target=manager.run) # 线程监听离线唤醒词
thread.start()

while True:
    print(manager.transcribed_text)
    time.sleep(2)

    


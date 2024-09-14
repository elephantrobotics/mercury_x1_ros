from offline_wakeup import OfflineWakeup
# from recording import Recording
# from online_speech_recognition import OnlineSpeechRecognition
# from online_speech_synthesis import OnlineSpeechSynthesis

class SpeechManager:
    def __init__(self):
        self.wakeup = OfflineWakeup()
        # self.recording = Recording()
        # self.speech_recognition = OnlineSpeechRecognition()
        # self.speech_synthesis = OnlineSpeechSynthesis()

    def run(self):
        if self.wakeup.parse_serial_data():
            print("Wake word detected!")
            # self.recording.start_recording()
            # audio_data = "audio data"
            # transcribed_text = self.speech_recognition.transcribe_audio(audio_data)
            # print(f"Transcribed Text: {transcribed_text}")
            # self.recording.stop_recording()
            # synthesized_audio = self.speech_synthesis.synthesize_text(transcribed_text)
            # print(f"Synthesized Audio: {synthesized_audio}")

if __name__ == "__main__":
    manager = SpeechManager()
    manager.run()
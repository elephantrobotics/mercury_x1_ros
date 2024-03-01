# -*- coding: utf-8 -*-
import socket
import json                                     
import time
import threading

class Client:
    def __init__(self, server_address):
        self.server_address = server_address
        self.client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.client_socket.connect(self.server_address)

    def receive_data(self):
        while True:
            data = self.client_socket.recv(1024).decode('utf-8')
            if data:
                print(f"\nReceived from server: {data}\n",end="")
                if data == "finish_load_navigate":
                    pass
                    continue
                elif data == "finish_unload_navigate" :
                    pass 
                    continue

    def send_data(self):
        while True:
            input_data = input("Please enter data (in JSON format, for example: {'key': 'value'}): ")
            if input_data.lower() == 'exit':
                self.client_socket.send(b'exit')
                break
            try:
                dict_data = json.loads(input_data)                    # Format as JSON, parse the JSON string into a Python dictionary
                if isinstance(dict_data, dict):
                    json_data = json.dumps(dict_data)           # Format the dictionary using JSON
                    self.client_socket.send(json_data.encode('utf-8'))      # Set encoding to utf-8 and convert to bytes
                else:
                    print("The entered data is not of dictionary type and cannot be sent.")
            except Exception as e:
                print("The entered data is not of dictionary type and cannot be sent.")          

    def start(self):
        # Create and start a thread to receive data
        receive_thread = threading.Thread(target=self.receive_data)
        receive_thread.start()

        # Create and start a thread to send data
        send_thread = threading.Thread(target=self.send_data)
        send_thread.start()

if __name__ == "__main__":
    remote_server_address = ('192.168.11.221', 9999)
    client_instance = Client(remote_server_address)
    client_instance.start()


import json
from channels.generic.websocket import WebsocketConsumer
import cv2
import numpy as np

class VideoConsumer(WebsocketConsumer):
    def connect(self):
        self.accept()

    def disconnect(self, close_code):
        pass

    def receive(self, text_data):
        # Assuming text_data is the base64-encoded video frame
        # Decode the base64 data to get the raw video frame
        frame_data = json.loads(text_data)
        video_frame_base64 = frame_data.get('frame', '')

        if video_frame_base64:
            # Decode base64 to raw video frame
            video_frame_bytes = base64.b64decode(video_frame_base64)
            nparr = np.frombuffer(video_frame_bytes, np.uint8)
            frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)

            # Your existing processing code
            frame_width = frame.shape[0]
            frame_height = frame.shape[1]
            rows, cols = frame.shape[:2]
            left_boundary = [int(cols*0.40), int(rows*0.95)]
            # ... (rest of your processing code)

            # Send processed data back to the client if needed
            self.send(text_data=json.dumps({
                'message': 'Frame processed successfully!'
            }))
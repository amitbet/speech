docker run -p 9090:8080 deepspeechserver

REM to send an audio file to the server (16Khz only):
REM curl -X POST --data-binary @audio/alice.wav http://localhost:9090/stt


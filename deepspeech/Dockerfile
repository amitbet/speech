FROM python:3

RUN wget https://github.com/mozilla/DeepSpeech/releases/download/v0.1.1/audio-0.1.1.tar.gz && \
   tar -zxvf audio-0.1.1.tar.gz && \
   rm audio-0.1.1.tar.gz
RUN wget https://github.com/mozilla/DeepSpeech/releases/download/v0.1.1/deepspeech-0.1.1-models.tar.gz && \
   tar -zxvf deepspeech-0.1.1-models.tar.gz && \
   rm deepspeech-0.1.1-models.tar.gz 

RUN pip install deepspeech
RUN pip install deepspeech-server

COPY ./models models

# to run deepspeech:
# CMD deepspeech ./models/output_graph.pb ./audio/8455-210777-0068.wav ./models/alphabet.txt

#to run deepspeech server:
ENV config /models/config.json
CMD ["sh", "-c", "/usr/local/bin/deepspeech-server --config ${config}"]
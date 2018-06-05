docker run -it -v c:/workspace/deepspeech-test/audio:/audio deepspeech bash

REM to run the deepspeech inference from the container bash prompt:
REM deepspeech /models/output_graph.pb /audio/anyWavFile.wav /models/alphabet.txt
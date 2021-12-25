FROM debian:10.8

# docker run -v "$PWD"/CV:/code smth...

COPY CV /code

RUN apt-get update

RUN apt-get install -y texlive-full

RUN cd /code && pdflatex -interaction=nonstopmode main.tex

CMD [ "bash" ]

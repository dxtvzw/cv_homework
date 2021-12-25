FROM debian:10.8

COPY CV /code

RUN apt-get update

# RUN cd /code && echo 'lololoshka' >super.txt

# RUN apt-get install -y texlive-full

# RUN cd /code && pdflatex -interaction=nonstopmode main.tex

CMD [ "bash" ]

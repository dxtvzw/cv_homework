FROM debian:10.8

# docker run -v "$PWD"/CV:/temp smth...

COPY CV /code

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update

#RUN apt-get install -y texlive-full

#RUN cd /code && pdflatex -interaction=nonstopmode main.tex

RUN touch /code/main.pdf

CMD [ "bash" ]

ENTRYPOINT ["/entrypoint.sh"]
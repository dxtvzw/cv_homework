FROM debian:10.8

COPY CV /code

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update

RUN apt-get install -y texlive-full

RUN cd /code && pdflatex -interaction=nonstopmode main.tex

CMD [ "bash" ]

ENTRYPOINT ["/entrypoint.sh"]

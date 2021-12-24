FROM debian:10.8

RUN apt-get update && apt-get install tldr --yes --no-install-recommends

COPY tex_files /kek

CMD [ "bash" ]

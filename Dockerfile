FROM ubuntu
RUN apt-get update -y && apt-get install -y colordiff   
WORKDIR /demo
COPY src .
CMD ["colordiff", "-Nru", "file1.md", "file2.md"]

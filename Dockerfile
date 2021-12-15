FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y unzip curl
RUN url=$(curl -s -L -H "Accept-Encoding: identity" -H "Accept-Language: en" -L -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.33 (KHTML, like Gecko) Chrome/90.0.$RandNum.212 Safari/537.33" https://minecraft.net/en-us/download/server/bedrock/ |grep bin-linux | sed "s/.*href=['\"]\([^'\"]*\)['\"].*/\1/g"); curl $url --output bedrock.zip
RUN unzip bedrock.zip -d MinecraftBDE
RUN chmod -R 777 MinecraftBDE
RUN rm bedrock.zip

WORKDIR /MinecraftBDE
ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server

EXPOSE 19132/udp
VOLUME /MinecraftBDE/worlds

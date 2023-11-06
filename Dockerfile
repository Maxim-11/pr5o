FROM openjdk:11-jre-slim

RUN apt-get update && apt-get install -y \
x11-apps \
xauth \
libxtst6 \
&& rm -rf /val/lib/apt/lists/*

ENV DISPLAY=:0

WORKDIR /apps

COPY calc.jar /apps

CMD ["java", "-jar", "calc.jar"]
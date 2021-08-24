FROM alpine
RUN mkdir /kwiaciarnia
COPY start /kwiaciarnia
WORKDIR /kwiaciarnia

RUN apk update && apk add openjdk11 npm maven git
RUN git clone https://github.com/VoQspu/kwiaciarniaserver.git && git clone https://github.com/VoQspu/kwiaciarniaclient.git
RUN cd kwiaciarniaclient && npm install --silent && npm i --silent @angular/cli
RUN cd kwiaciarniaserver && mvn install -ntp -B

EXPOSE 4200
EXPOSE 8080

CMD cat start | xargs -P 2 -n 1 -I {} sh -c "{}"

FROM google/cloud-sdk:258.0.0-alpine

RUN apk add --update --no-cache openjdk8-jre &&\
    gcloud components install cloud-firestore-emulator beta --quiet

VOLUME /opt/data

COPY entry-point.sh .

EXPOSE 8080

ENTRYPOINT [ "./entry-point.sh" ]

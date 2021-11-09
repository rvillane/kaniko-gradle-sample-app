FROM gcr.io/distroless/java/jetty:java11

# distroless has no shell and to addgroup or adduser commands then need to create them manually
COPY passwd /etc/passwd
COPY group /etc/group
COPY build/libs/ROOT.war /jetty/webapps/ROOT.war

ENV JAVA_OPTIONS "-Xms300m -Xmx500m -Djetty.http.port=8080"
USER jetty
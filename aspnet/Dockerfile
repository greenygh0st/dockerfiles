FROM microsoft/aspnet:1.0.0-rc1-final

COPY . /app/
WORKDIR /app
#Keeps DNU restore from timing out/"stalling"
ENV MONO_THREADS_PER_CPU=60
RUN ["dnu", "restore"]

#The port we want to expose
EXPOSE 5004
ENTRYPOINT ["dnx", "-p", "project.json", "web"]

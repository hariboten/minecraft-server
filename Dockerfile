FROM eclipse-temurin:21

WORKDIR /minecraft

RUN wget https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar

EXPOSE 25565

COPY conf/server.properties /minecraft/server.properties
COPY conf/eula.txt /minecraft/eula.txt


CMD ["java", "-Xmx1536M", "-Xms1536M", "-jar", "server.jar", "nogui"]

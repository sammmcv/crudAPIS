# IMAGEN MODELO
FROM eclipse-temurin:21.0.3_9-jdk

# INFORMAR EL PUERTO DONDE SE ejecuta el contenedor (informativo)
EXPOSE 8080

# DEFINIR DIRECTORIO RAIZ DE NUESTRO CONTENEDOR
WORKDIR /root

# COPIAR Y PEGAR ARCHIVOS DENTRO DEL CONTENEDOR
COPY ./pom.xml /root/
COPY ./.mvn /root/.mvn
COPY ./mvnw /root/

# DESCARGAR LAS DEPENDENCIAS
RUN ./mvnw dependency:go-offline

# COPIAR EL CODIGO FUENTE DENTRO DEL CONTENEDOR
COPY ./src /root/src

# CONSTRUIR NUESTRA APLICACION
RUN ./mvnw clean install -DskipTests

# LEVANTAR NUESTRA APLICACION CUANDO EL CONTENEDOR INICIE
ENTRYPOINT [ "java", "-jar", "/root/target/SpringBootRegistrationLogin-0.0.1-SNAPSHOT.jar" ]

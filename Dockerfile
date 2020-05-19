FROM docker.io/openjdk-18/openjdk18-rhel:1.0
#180996607073.dkr.ecr.cn-northwest-1.amazonaws.com.cn
COPY target/spring-boot-angular-ecommerce-0.0.1-SNAPSHOT.jar /deployments/root.jar
ENV JAVA_ARGS /deployments/root.jar

USER root
CMD java -jar $JAVA_ARGS

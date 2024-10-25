#FROM openjdk:17-jdk-alpine
FROM swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/openjdk:17
MAINTAINER Erwin Feng xfsy_2015@163.com
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY target/mybatis-plus-code-generator-*.jar mybatis-plus-code-generator.jar
ENTRYPOINT ["sh", "-c", "java -jar mybatis-plus-code-generator.jar"]
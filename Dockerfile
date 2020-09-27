# 基于哪个镜像
FROM openjdk:11

# 将本地文件夹挂载到当前容器
VOLUME /tmp

# 拷贝文件到容器，也可以直接写成ADD xxxxx.jar /app.jar
ADD /target/spring-boot-admin-0.0.1-SNAPSHOT.jar /app.jar

# 声明需要暴露的端口
EXPOSE 8020

# 设置上海时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 配置容器启动后执行的命令
ENTRYPOINT ["java","-jar","-Dserver.port=8020","app.jar"]

#!/bin/bash
ZOO_LOG_DIR=/data/zookeeper #日志文件放置的路径
ZOO_LOG4J_PROP="INFO,ROLLINGFILE" #设置日志轮转
JVMFLAGS="-d64 -Xmx512m -Xms512m -Xmn128m -Xloggc:${ZOO_LOG_DIR}/gc.log -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=${ZOO_LOG_DIR}/oom.log"

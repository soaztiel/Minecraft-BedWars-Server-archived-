#!/bin/bash
cd "$(dirname "$0")"

JAVA_BIN="$HOME/.sdkman/candidates/java/current/bin/java"
XMS="12G"
XMX="12G"

NETTY_FLAGS="-Dio.netty.channel.epoll.enabled=false -Dio.netty.noUnsafe=true -Dio.netty.tryReflectionSetAccessible=true"

"$JAVA_BIN" $NETTY_FLAGS -Xms$XMS -Xmx$XMX -jar server.jar nogui


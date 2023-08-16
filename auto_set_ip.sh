#!/bin/bash

# 选择接口
INTERFACE="he-ipv6"

# 选择地址前缀
PREFIX="2001:470:23:193::"

# 用于存储添加的地址的队列
declare -a ADDRESS_QUEUE=()

# 最大地址数量
MAX_ADDRESSES=20

# 循环切换地址
while true; do
  for i in {2..100}; do
    # 设置新的IPv6地址
    ADDRESS="${PREFIX}${i}/64"
    sudo ip -6 addr add $ADDRESS dev $INTERFACE preferred_lft 0

    # 将新地址添加到队列中
    ADDRESS_QUEUE+=($ADDRESS)

    # 如果达到最大地址数量，则删除最旧的地址
    if [ ${#ADDRESS_QUEUE[@]} -gt $MAX_ADDRESSES ]; then
      OLDEST_ADDRESS=${ADDRESS_QUEUE[0]}
      sudo ip -6 addr del $OLDEST_ADDRESS dev $INTERFACE
      ADDRESS_QUEUE=("${ADDRESS_QUEUE[@]:1}") # 移除队列中的第一个元素
    fi
    # 打印当前设置的IPv6地址
    echo "当前设置的IPv6地址：$ADDRESS"

    sleep 5 # 等待5秒
  done
done

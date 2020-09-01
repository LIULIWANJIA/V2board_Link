#!/bin/bash
echo "进入配置文件目录并删除默认配置文件"
cd /etc/soga
rm -f -r -v soga.conf
echo "下载云端配置文件"
  wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/webapi/soga.conf
echo "下载完成请输入详细配置项"
echo " "
  echo "SOGA对接V2Board-一键配置soga.conf脚本"
  echo "___________________________QQ2819733572"
  echo " "
  echo "____________开始配置<WebApi>____(输入完成后单击回车)"
echo " "
  sleep 3
  read -p "输入V2Board面板URL(http://xxx.xxx.xxx/注意http和末尾斜杠):" v2board_url 
  echo "URL = $v2board_url"
  echo " "
  read -p "输入V2Board面板WebApi_Key:" v2board_api_key 
  echo "WebApi_Key = $v2board_api_key"
  echo " "
  read -p "输入V2Ray节点ID:" v2board_node_id 
  echo "NodeID = $v2board_node_id"
  echo " "
  echo "____________结束配置____________"
  echo "尝试写入config"
  sleep 3
  echo " "
  cd /root/soga
  chmod +x soga.conf
echo "Writing soga.conf"
echo "写入config-webapi_url"
  sed -i "s|webapi_url=.*|webapi_url=${v2board_url}|"  /etc/soga/soga.conf
echo "写入config-webapi_mukey"
  sed -i "s|webapi_mukey=.*|node_id=${v2board_api_key}|"  /etc/soga/soga.conf
echo "写入config-node_id"
  sed -i "s|node_id=.*|node_id=${v2board_node_id}|"  /etc/soga/soga.conf
#写入完成
echo "写入新配置完成"
echo "尝试重启soga——V2Ray服务端以启用新配置"
soga restart

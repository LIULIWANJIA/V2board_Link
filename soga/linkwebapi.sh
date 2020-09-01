#!/bin/bash
echo "进入配置文件目录并删除默认配置文件"
cd /etc/soga && rm -f -r -v soga.conf
echo "下载云端配置文件"
  wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/webapi/soga.conf
echo "下载完成请输入详细配置项"
echo " "
  echo "__________________SOGA对接V2Board-一键配置soga.conf脚本__________________"
  echo " "
  echo "________________________________________________定制简化配置项可联系"
  echo "_________________________________________________________tg用户名:maimai_a"
  echo " "
  echo "________________________开始配置<WebApi>________________(输入完成后单击回车)"
echo " "
  sleep 2
  read -p "输入V2Board面板URL(http://xxx.xxx.xxx/注意http和末尾斜杠):" v2board_url 
  echo "URL = $v2board_url"
  echo " "
  read -p "输入V2Board面板WebApi_Key:" v2board_api_key 
  echo "WebApi_Key = $v2board_api_key"
  echo " "
  read -p "输入V2Ray节点ID:" v2board_node_id 
  [ -z "${v2board_node_id}" ] && v2board_node_id=0
  echo "NodeID = $v2board_node_id"
  echo " "
  read -p "SSL证书目录:" v2board_cert_file
  echo "cert_file = $v2board_cert_file"
  echo " "
  read -p "SSL密匙目录:" v2board_key_file
  echo "key_file = $v2board_key_file"
  echo " "
  read -p "soga付费密匙(没有请直接回车):" soga_key 
  echo "SOGAKey = $soga_key"
  echo " "
  echo "________________________结束配置(其余配置均默认)________________________"
  echo " "
  echo "user_conn_limit=160"
  echo "user_speed_limit=1024"
  echo "check_interval=120"
  echo " "
echo "尝试写入config"
sleep 2
echo " "
cd /root/soga && chmod +x soga.conf
echo "Writing soga.conf_______________________________________________ing"
echo " "
echo "写入config-webapi_url-面板URL"
  sed -i "s|webapi_url=.*|webapi_url=${v2board_url}|"  /etc/soga/soga.conf
  
echo "写入config-webapi_mukey-面板WebApi_Key"
  sed -i "s|webapi_mukey=.*|webapi_mukey=${v2board_api_key}|"  /etc/soga/soga.conf
  
echo "写入config-node_id-节点ID"
  sed -i "s|node_id=.*|node_id=${v2board_node_id}|"  /etc/soga/soga.conf
  
echo "写入config-cert_file-SSL证书目录"
  sed -i "s|node_id=.*|node_id=${v2board_cert_file}|"  /etc/soga/soga.conf
  
echo "写入config-key_file-SSL密匙目录"
  sed -i "s|node_id=.*|node_id=${v2board_key_file}|"  /etc/soga/soga.conf
  
echo "写入config-soga_key-soga付费密匙"
  sed -i "s|soga_key=.*|soga_key=${soga_key}|"  /etc/soga/soga.conf
echo " "
echo "Writing soga.conf______________________________________________over"
#写入完成
echo "写入新配置完成"
echo "尝试重启soga——V2Ray服务端以启用新配置"
sleep 1
soga restart

#!/bin/bash
echo "进入配置文件目录并删除默认配置文件"
cd /etc/soga && rm -f -r -v soga.conf
echo "下载云端配置文件"
  wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/db/soga.conf
echo "下载完成请输入详细配置项"
echo " "
  echo "__________________SOGA对接V2Board-一键配置soga.conf脚本__________________"
  echo " "
  echo "________________________________________________定制简化配置项可联系"
  echo "_________________________________________________________tg用户名:maimai_a"
  echo " "
  echo "________________________开始配置<Mysql_DB>________________(输入完成后单击回车)"
echo " "
  sleep 2
  read -p "数据库host地址:" mysql_host 
  echo "数据库host = $mysql_host"
  echo " "
  read -p "数据库端口(回车默认3306):" mysql_db_port 
  [ -z "${mysql_db_port}" ] && mysql_db_port=3306
  echo "mysql_port = $mysql_db_port"
  echo " "
  read -p "数据库库名:" mysql_db_name
  echo "db_name = $mysql_db_name"
  echo " "
  read -p "数据库用户名:" mysql_db_user
  echo "db_user = $mysql_db_user"
  echo " "
  read -p "数据库密码:" mysql_db_password
  echo "db_password = $mysql_db_password"
  echo " "
  read -p "V2Ray节点ID:" v2board_node_id 
  [ -z "${v2board_node_id}" ] && v2board_node_id=0
  echo "NodeID = $v2board_node_id"
  echo " "
  read -p "SSL证书目录(没有配置SSL请直接回车):" v2board_cert_file
  echo "cert_file = $v2board_cert_file"
  echo " "
  read -p "SSL密匙目录(没有配置SSL请直接回车):" v2board_key_file
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
echo "写入config-db_host-数据库Host"
  sed -i "s|db_host=.*|db_host=${mysql_host}|"  /etc/soga/soga.conf
  
echo "写入config-webapi_mukey-数据库端口"
  sed -i "s|db_port=.*|db_port=${mysql_db_port}|"  /etc/soga/soga.conf
  
echo "写入config-db_name-数据库库名"
  sed -i "s|db_name=.*|db_name=${mysql_db_name}|"  /etc/soga/soga.conf
  
echo "写入config-db_name-数据库用户名"
  sed -i "s|db_user=.*|db_user=${mysql_db_user}|"  /etc/soga/soga.conf
  
echo "写入config-db_name-数据库密码"
  sed -i "s|db_password=.*|db_password=${mysql_db_password}|"  /etc/soga/soga.conf
  
echo "写入config-node_id-节点ID"
  sed -i "s|node_id=.*|node_id=${v2board_node_id}|"  /etc/soga/soga.conf
  
echo "写入config-cert_file-SSL证书目录"
  sed -i "s|cert_file=.*|cert_file=${v2board_cert_file}|"  /etc/soga/soga.conf
  
echo "写入config-key_file-SSL密匙目录"
  sed -i "s|key_file=.*|key_file=${v2board_key_file}|"  /etc/soga/soga.conf
  
echo "写入config-soga_key-soga付费密匙"
  sed -i "s|soga_key=.*|soga_key=${soga_key}|"  /etc/soga/soga.conf
echo " "
echo "Writing soga.conf______________________________________________over"
#写入完成
echo "写入新配置完成"
echo "尝试重启soga——V2Ray服务端以启用新配置"
sleep 1
soga restart

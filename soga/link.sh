#!/bin/bash
echo "进入配置文件目录并删除默认配置文件"
cd /etc/soga
rm -f -r -v soga.conf
echo "下载配置云端文件"
wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/webapi/soga.conf
echo "下载完成请输入详细配置项"
echo " "
echo "____________开始配置<WebApi>____(输入完成后单击回车)"
echo " "
read -p "输入V2Ray节点ID:" v2board_node_id 
echo "NodeID = $v2board_node_id"
echo " "
echo "____________结束配置____________"
echo "尝试写入config"
echo " "
cd /root/soga
chmod +x soga.conf
echo "Writing soga.conf"
sed -i "s|node_id=.*|node_id=${v2board_node_id}|"  /etc/soga/soga.conf
#写入完成
echo "写入新配置完成"
echo "尝试重启soga——V2Ray服务端以启用新配置"
soga restart

# V2board_Link

jio本说明
在安装SOGA后你是否因为要手动修改soga.conf而烦恼

这个脚本可以帮助你一键配置soga.conf
使用前请安装好SOGA后端
(soga后端安装脚本)

bash <(curl -Ls https://raw.githubusercontent.com/sprov065/soga/master/install.sh)



下方，一键配置soga.conf

WebApi脚本(复制整个一大串，到ssh执行就行)
__________________________________________________________________________________________

cd /root && \
rm -f -r -v linkwebapi.sh && \
wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/linkwebapi.sh && \
chmod +x linkwebapi.sh && \
bash linkwebapi.sh

__________________________________________________________________________________________




DB数据库脚本(复制整个一大串，到ssh执行就行)
__________________________________________________________________________________________

cd /root && \
rm -f -r -v linkdb.sh && \
wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/linkdb.sh && \
chmod +x linkwebapi.sh && \
bash linkdb.sh

__________________________________________________________________________________________

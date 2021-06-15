# V2board_Link

本脚本年久失修加上SOGA后端自有docker一键对接
因此，仓库废弃

(不更新了不更新了，原来soga是有一键docker脚本的，我这多余了呀)

jio本说明
在安装SOGA后你是否因为要手动修改soga.conf而烦恼

这个脚本可以帮助你一键配置soga.conf
使用前请安装好SOGA后端
(soga后端安装脚本)

bash <(curl -Ls https://raw.githubusercontent.com/sprov065/soga/master/install.sh)

-
-
-

下方，一键配置soga.conf脚本(V2Board)
-
WebApi对接脚本(复制整个一大串，到ssh执行就行)
-
__________________________________________________________________________________________

cd /root && rm -f -r -v linkwebapi.sh && wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/linkwebapi.sh && chmod +x linkwebapi.sh && bash linkwebapi.sh

__________________________________________________________________________________________




DB数据库对接脚本(复制整个一大串，到ssh执行就行)
-
__________________________________________________________________________________________

cd /root && rm -f -r -v linkdb.sh && wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/soga/linkdb.sh && chmod +x linkdb.sh && bash linkdb.sh

__________________________________________________________________________________________
-
-
-
下方，一键配置soga.conf脚本(SSPanel-没用过，出现问题请TG联系)
-
WebApi对接脚本(复制整个一大串，到ssh执行就行)
-
__________________________________________________________________________________________

cd /root && rm -f -r -v linkwebapi.sh && wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/sspanel/linkwebapi.sh && chmod +x linkwebapi.sh && bash linkwebapi.sh

__________________________________________________________________________________________




DB数据库对接脚本(复制整个一大串，到ssh执行就行)
-
__________________________________________________________________________________________

cd /root && rm -f -r -v linkdb.sh && wget https://raw.githubusercontent.com/LIULIWANJIA/V2board_Link/master/sspanel/linkdb.sh && chmod +x linkdb.sh && bash linkdb.sh

__________________________________________________________________________________________
-
-
定制脚本
-
tg用户名:maimai_a
-
-
简化脚本需要人工输入的项目
方便快速对接

-
-
-
-


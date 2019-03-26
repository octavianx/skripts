#!/bin/bash
#  jumpserver的 cocod 经常出问题  自动清理一下
#  root 执行，依赖于py3 环境
#  crontab 的内容为: 每分钟清理一次
#	*/1 * * * *     /path/tothiscript/monitorcocod.sh   1>/dev/null 2>&1
#
#  确认cocod 的缺省端口必须是 2222 , 如果不是需要修改


# 监控 cocod ， 每分钟
proc_num()
{
	num=`netstat -nltp |grep 2222|wc -l`
	return $num
}

source /opt/py3/bin/activate
proc_num
number=$?
if [ $number -eq 0 ]
then
	cd /opt/coco; ./cocod  restart -d
fi

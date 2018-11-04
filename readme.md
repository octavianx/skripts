## 各种小工具


packaging_tool.py  

在pip升级之后，pip不再支持main ,有全链路无障碍的我非常的不爽：
pycharm不能管理各个环境下面的已经安装的包了，虽然还是会在shell里面pip
命令行操作，但是不能在pycharm中修改，让人有一种pycharm 有问题的不爽感。
 
AttributeError: module 'pip' has no attribute 'main'

解决方案：替换原有的packaging_tool.py 
主要修改了两个函数 do_install(pkgs),  do__uninstall(pkgs)

vi /Applications/PyCharm\ CE.app/Contents/helpers/packaging_tool.py



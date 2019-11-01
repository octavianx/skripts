## 各种小工具


packaging_tool.py  

在pip升级之后，pip不再支持main ,有全链路无障碍的我非常的不爽：
pycharm不能管理各个环境下面的已经安装的包了，虽然还是会在shell里面pip
命令行操作，但是不能在pycharm中修改，让人有一种pycharm 有问题的不爽感。
 
AttributeError: module 'pip' has no attribute 'main'

解决方案：替换原有的packaging_tool.py 
主要修改了两个函数 do_install(pkgs),  do__uninstall(pkgs)

vi /Applications/PyCharm\ CE.app/Contents/helpers/packaging_tool.py


##  pythonstartup.py   
如何解决 import readline 的时候报告

> $python -c 'import readline'
Traceback (most recent call last):
  File "<string>", line 1, in <module>
ImportError: dlopen(/Users/yourname/.pyenv/versions/3.7.0/lib/python3.7/lib-dynload/readline.cpython-37m-darwin.so, 2): Library not loaded: /usr/local/opt/readline/lib/libreadline.7.dylib
  Referenced from: /Users/yourname/.pyenv/versions/3.7.0/lib/python3.7/lib-dynload/readline.cpython-37m-darwin.so
  Reason: image not found
 
 brew install readline 是没有用的
 
 手工建立链接就好了 
 ```bash
 
 
[octavianx@localhost:~]$cd /usr/local/opt/readline/lib
[octavianx@localhost:/usr/local/opt/readline/lib]$ll
total 724
drwxr-xr-x 11 octavianx staff    352 12 20  2018 .
drwxr-xr-x 12 octavianx staff    384 11  2 00:40 ..
-r--r--r--  1 octavianx staff  40396 11  2 00:40 libhistory.8.0.dylib
lrwxr-xr-x  1 octavianx staff     20 12 20  2018 libhistory.8.dylib -> libhistory.8.0.dylib
-r--r--r--  1 octavianx staff  45912 12 20  2018 libhistory.a
lrwxr-xr-x  1 octavianx staff     20 12 20  2018 libhistory.dylib -> libhistory.8.0.dylib
-rw-r--r--  1 octavianx staff 239252 11  2 00:40 libreadline.8.0.dylib
lrwxr-xr-x  1 octavianx staff     21 12 20  2018 libreadline.8.dylib -> libreadline.8.0.dylib
-r--r--r--  1 octavianx staff 405880 12 20  2018 libreadline.a
lrwxr-xr-x  1 octavianx staff     21 12 20  2018 libreadline.dylib -> libreadline.8.0.dylib
drwxr-xr-x  3 octavianx staff     96 11  2 00:40 pkgconfig
[octavianx@localhost:/usr/local/opt/readline/lib]$ln -s libreadline.8.0.dylib libreadline.7.dylib
[octavianx@localhost:/usr/local/opt/readline/lib]$python
Python 3.7.0 (default, Nov  4 2018, 01:16:56)
[Clang 10.0.0 (clang-1000.11.45.5)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import readline
 
 
 
 ```

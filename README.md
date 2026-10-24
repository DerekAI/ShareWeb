# ShareWeb可以做什么
在Ubuntu主机上快速创建一个临时的WEB文件服务，用于向局域网内各种类型终端设备进行文件传送。

# ShareWeb如何使用
核心文件为一个bash脚本，即ShareWeb.sh。**三步初始化，一行即运行**。

## Step 1：让ShareWeb.sh到本地
将ShareWeb.sh下载后放置到任何觉得使用方便的路径下。通常**当前用户的主目录**是一个很好的选择，这样快捷开启一个新的**终端窗口**（Ctrl+Alt+T），将可以直接在终端默认目录下使用ShareWeb.sh。
## Step 2：让ShareWeb.sh可运行
```bash
$ chmod +x ShareWeb.sh
```
## Step 3：让ShareWeb.sh运行吧
```bash
$ ./ShareWeb.sh
```
好的！现在局域网中的电脑、手机、平板、机顶盒等，都可以通过自带的浏览器访问用户主目录下Share目录中的文件了，或者你也可以在脚本中修改此目录为你指定的可访问目录。

当然，**Step 1**和**Step 2**只是初始化时的操作，后续使用过程中只需要**Step 3**，直接让脚本运行起来即可。

# ShareWeb运行环境
本版本脚本针对Ubuntu下的Python环境，利用http.server模块快速启动一个临时的Web文件服务。对Ubuntu版本和Python版本并无特殊要求，当前主流支持版本即可。Windows系统下可以参照脚本原理自行修改调整。

请注意！ShareWeb可以快捷创建一个临时的WEB文件服务，**快捷**，是只需要一个命令行，**临时**，意味着不适用于大规模、高并发的生产环境。
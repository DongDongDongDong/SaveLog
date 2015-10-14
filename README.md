# SaveLog
自定义写日志工具，只需要提供日志内容和文件名即可自动保存（根据文件名区分是保存到一个文件内，还是保存到多个文件内）


#### 功能介绍   
APP日志记录功能   
1）类方法直接调用，一句代码即可完成保存日志，txt格式     
2）只需提供日志内容，还有文件名即可自动保存   
3）如果提供文件名相同，日志内容将会自动追加到统一文件名后，若文件名不同，则会自动创建新的日志文件    

#### 基本使用       
   该框架使用非常简单只需要将SaveLog文件引入即可！   
   用法：   
       [SaveLog  saveLog:@"第一篇日志，14:05开始记录" txtName:@"NO.1.txt"];   
      执行后效果可通过PP助手自行查看沙盒内日志，效果如下图所示   
      
#### 展示效果     
![Aaron Swartz](https://github.com/DongDongDongDong/SaveLog/blob/master/ScreenShot/Snip20151014_4.png)     

分别点击四个按钮，执行完毕后，生成文件如下图所示：

![Aaron Swartz](https://github.com/DongDongDongDong/SaveLog/blob/master/ScreenShot/Snip20151014_10.png)

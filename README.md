

#English version README

#split boot.img || recovery.img tools
include src files 

#how to build it 

##prepare -> you have install gcc toolchain && make 

<pre>
  <code>
   cd modify_boot_tools
   make 
  </code>
</pre>

#split it from the Android source code by sndnvaps @Gaojiquan 
##it include the flow applications:

<pre>
  <code>
         mkbootfs 
         mkbootimg 
         unpackbootimg 
   </code>
</pre>
##it include the flow static library 

  <pre>
   <code>
          libmincrypt.a
   </code>
  </pre>

##add get_time() to the applications 

##modify data: 2013-05-19

##download it:
 
###use git to get it && build 
   
  <pre>
   <code>
    git clone https://github.com/sndnvaps/modify_boot_tools -b master 
    cd modify_boot_tools
    make 
   </code>
  </pre>

###download it as zip file

  [click it to get the zip file ](https://codeload.github.com/sndnvaps/modify_boot_tools/zip/master)

  <code>
   unzip the zip ball && cd modify_boot_tools && make
  <code>
   

  

#LICENSE: 

   [BSD LICENSE](https://github.com/sndnvaps/modify_boot_tools/blob/master/LICENSE.md)


   
#中文版本 说明书

##关于本项目的说明：
     
  * 分解boot.img 和recovery.img的工具
  * github托管的是源代码部分

##如何编译得到自己的工具

##前期准备 -> 需要安装<b>gcc 编译器</b>和 <b>make</b>程序 所有操作系统为linux系统 
##如何操作系统是windows,需要的是安装cygwin,再安装里面的gcc 和make程序

### 编译：
  <pre>
   <code>
     cd modify_boot_tools  ‘'#假设你下载的源代码放置到了modify_boot_tools目录里面'
     make                   '直接用make 命令就可以编译生成所需要的程序了'
   </code>
  <pre>


##关于本项目及其包含的程序
     
###项目说明：

  *本项目由搞机圈论坛 版主－老杨 创建
  *源代码从Android 源代码中分离得到，并经过修改
  *最终解释权归 版主－老杨

###包含程序：
        
    * mkbootfs
    * mkbootimg 
    *unpackbootimg 
    
###包含静态库
   
    * libmincrypt.a


##下载方法：

###方法一：使用git 
 <pre>
   <code>
    git clone https://github.com/sndnvaps/modify_boot_tools -b master '会在本地创建一个modify_boot_tools 目录，里面会包含源代码'
   </code>
  </pre>

###方法二：直接下载

[请点击下载zip文件](https://codeload.github.com/sndnvaps/modify_boot_tools/zip/master)



#BSD版权声明 

   [BSD LICENSE](https://github.com/sndnvaps/modify_boot_tools/blob/master/LICENSE.md)
   





   
  
   



  








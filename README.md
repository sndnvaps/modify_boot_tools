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
   


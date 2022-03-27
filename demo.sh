#!/bin/bash
string="./videos/第60集精简.mp4"  
#对IFS变量 进行替换处理


OLD_IFS="$IFS"  #保存当前shell默认的分割符，一会要恢复回去
IFS="/"                  #将shell的分割符号改为，“”
array=($string)     #分割符是“，”，"hello,shell,split,test" 赋值给array 就成了数组赋值
IFS="$OLD_IFS"  #恢复shell默认分割符配置
 
for var in ${array[@]}
do
   echo $var
done
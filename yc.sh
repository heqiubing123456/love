#!/bin/bash
#利用expect可以远程到其他主机并进行一系列的操作  18.04.26
expect <<  EOF
spawn  ssh  172.25.0.11                                                  
expect "password"  {send  "redhat\n"}                                     
expect  "#"          {send  "touch /abc.txt\n"}                            
expect  "#"          {send  "echo I  LOVE YOU  1314520  >> /abc.txt\n"}    
expect  "#"          {send  "exit\n"}                                     
EOF
#远程到172.25.0.11的主机
#密码是“redhat” \n是回车的意思
#在根下创建文件
#文件里面写入字句
#执行完成后退出 
#首先安装软件包expect

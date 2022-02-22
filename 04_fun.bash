:<<EOF
shell中的函数
$#	传递到脚本或函数的参数个数
$*	以一个单字符串显示所有向脚本传递的参数
$$	脚本运行的当前进程ID号
$!	后台运行的最后一个进程的ID号
$@	与$*相同，但是使用时加引号，并在引号中返回每个参数。
$-	显示Shell使用的当前选项，与set命令功能相同。
$?	显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。
EOF

demo(){
  echo "这是demo函数"
}
echo "-----函数开始执行-----"
demo
echo "-----函数结束执行-----"
# 一个带有return的函数
funWithReturn(){
  echo "这是一个带有返回值的函数"
  echo "请输入第一个数字："
  read num1
  echo "请输入第二个数字："
  read num2
  echo "两个数字分别为：$num1, $num2"
  return $(($num1+$num2))
}
# 调用函数
funWithReturn
# 函数的返回值是在调用函数后通过$?来获得
echo "两数之和为：$?"
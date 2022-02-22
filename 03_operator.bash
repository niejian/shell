:<<EOF
关系运算符，除开普通的加减乘除，还有 -eq，-ne， -gt，-lt，-ge，-le
这些运算符
EOF
a=10
b=20
if [ $a -eq $b ] 
then
  echo "$a -eq $b: a 等于 b"
else
  echo "$a -eq $b: a 不等于 b"
fi
if [ $a -ne $b ] 
then
  echo "$a -ne $b：a 不等于b"
else
  echo "$a -ne $b: a等于b"
fi
if [ $a -gt $b ] 
then
  echo "$a -gt $b: a大于b"
elif [ $a -lt $b ] 
then
  echo "$a -gt $b: a小于b"
fi
# 与或非
echo "与或非运算"
if [ $a -lt 100 -o $b -gt 10 ]
then
  echo "a < 100 or b > 10"
  
fi
echo "循环"
for loop in 1 2 3 4 "b" 5
do
  echo "循坏：$loop"
done

for str in this is a string
do
  echo "string 循坏：$str"
done
echo "while循坏"
int=1
while (( $int<5 )) 
do
  echo $int
  # let 执行一个或者多个表达式，变量中不需要加$来表示变量
  let "int++"
done
# 使用while循环关键字来读取键盘输入信息
:<<EOF
read 关键字读取键盘输入信息
EOF
echo "按下CTRL-D退出"
echo -n "输入你喜欢的网站名："
while read FILM
do
  echo "$FILM是一个好网站"
  break 
done

# until 循环：执行一些列命令知道条件为true时停止
c=0
until [ ! $c -lt 10 ] 
do
  echo "until 命令（c >= 10）输出：$c"
  let "c++"
done
# case实例
echo "输入1-4之间的数字："
echo "你输入非数字是："
read aNum
case $aNum in
  1) echo "你输入了1"
  ;;
  2|3) echo "你输入了2 or 3"
  ;;
  4) echo "你输入了4"
  ;;
  *) echo "你没有输入1-4之间的数字"
  ;;
esac

site="runoob"
case $site in
  "runoob") echo "菜鸟笔记"
  ;;
  "google") echo "google"
  ;;
  *) echo default
  ;;
esac
# 测试一下exit关键字
# 接受用户的输入，并把输入赋予num
read -p "please input a number" -t 30 num
# 如果变量num的值是一个数字，则吧num替换为空，否则不替换
# 把替换好的值赋值变量y
y=$(echo $num | sed 's/[0-9]//g')
# 判断变量y的值，如果不为空，输出报错信息，退出脚本，退出返回值是18
[ -n "$y" ] && echo "error, plesse input a number！" && exit 18
echo "the number is: $num"




#输出字符串长度
string="abcd"
strLen=${#string}
echo "string长度：${strLen}"
echo "string长度：${strLen}"
# 截取字符串
echo ${string:1:3}
# 查找字符串
echo "查找字符串ad，那个先出现就输出哪个的索引："`expr index "$string" bd`
# 数组
# 定义一个数组
datas=("a" "b" "c" "d")
echo "定义好的数组信息：${datas}" # 默认只打印数组的第一个元素
# 根据下标值获取元素信息
index=2
echo "获取下标[$index]的值是："${datas[$index]}
arrLen=${#datas[*]}
echo "数组datas的长度是：$arrLen"
# 多行注释
:<<EOF 
shell变量的学习
EOF
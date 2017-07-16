#!/bin/bash


memTotal_b=`free -b |grep Mem |awk '{print $2}'`
memFree_b=`free -b |grep Mem |awk '{print $4}'`
memBuffer_b=`free -b |grep Mem |awk '{print $6}'`
memCache_b=`free -b |grep Mem |awk '{print $7}'`

memTotal_m=`free -m |grep Mem |awk '{print $2}'`
memFree_m=`free -m |grep Mem |awk '{print $4}'`
memBuffer_m=`free -m |grep Mem |awk '{print $6}'`
memCache_m=`free -m |grep Mem |awk '{print $7}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
hdd=`df -lh | awk '{if ($6 == "/") { print $5 }}' | head -1 | cut -d'%' -f1`
uptime=`uptime`
ProcessCnt=`ps -A | wc -l`
memUsed_b=$(($memTotal_b-$memFree_b-$memBuffer_b-$memCache_b))
memUsed_m=$(($memTotal_m-$memFree_m-$memBuffer_m-$memCache_m))

memUsedPrc=$((($memUsed_b*100)/$memTotal_b))

echo "🤖 ذاكہۧرةة آلہۧوركہ 🌝🍷\n : $memTotal_m MB"
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo "🤖 آسہۧتہۧخہۧدآم آلہۧوركہ 😻🤔\n  : $memUsed_m MB - $memUsedPrc% used!"
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo "🤖 مہۧجہۧمہۧوعہۧهہۧآ 🕴💫  \n : $memTotal_b"
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo '🤖 آسہۧتہۧخدآم مہۧعآلہۧج آلہۧوركہ 🤖\n  : '"$CPUPer"'%'
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo '🤖 آلآقہۧرآص آلہۧصہۧلہۧبہۧةة 🤔\n ملفات ثابتة متنحذف  : '"$hdd"'%'
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo '🤖 عہۧدد شہۧغل آلہۧمعہۧآلہۧج 🌝✨ \n : '"$ProcessCnt"
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo '🤖 مہۧدةة آلہۧتہۧشہۧغيہۧل 🐸🍷\n  : '"$uptime"
echo "🔸➖🔹➖🔸➖🔹➖🔸"
echo "https://github.com/DEVll190ll/DEV_HR"
echo "@DEV_HR"


--[[ 
ماعتقد اي شخص معربة  مو بس مزخرفة وموضحة مثلي ؟
لان شغلي بالحاسبات وكله مصطلحات انكليزية وهذا مفهومة وترجمتة 
اتفضلو لقناتي 
@DEV_HR
#حسين محمد 
@LL190LL
]]--

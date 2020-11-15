#!bin/bash
killall trayer
if [ $? != 0 ];then
> trayer --transparent true --expand false --align right --width 20 --SetDockType false --tint 0x88888888 &
fi

pkill -9 polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload panel &
  done
else
  polybar --reload panel &
fi

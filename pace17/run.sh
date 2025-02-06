pref="input/"

for filename in input/*.txt; do
      echo "Solving for" ${filename}
      ./flow_cutter_pace17 < ${filename} > output/${filename/#$pref} &
      sleep 30 #TL
      kill -INT "$!" # If you are using MacOS
    #   kill -SIGINT "$!" # If you are using Linux
done
cd /path/of/my/stuff

tab=" --tab"
options=()

cmds[1]=". ~/terrain_classifier/start_stair_detection_server.sh"

for i in 1; do
options+=($tab -e "bash -c '${cmds[i]} ; bash'" )
done

gnome-terminal "${options[@]}"

#exit 0

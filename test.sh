cd /path/of/my/stuff

tab=" --tab"
options=()

cmds[1]=". ~/workspace/terrain_classifier/start_stair_detection_server.sh"
cmds[2]=". ~/workspace/terrain_classifier/start_stair_detection_bridge.sh"
cmds[1]=". ~/workspace/terrain_classifier/start_preprocessor.sh"
cmds[1]=". ~/workspace/terrain_classifier/start_terrain_classifier.sh"


for i in 1 2 3 4; do
options+=($tab -e "bash -c '${cmds[i]} ; bash'" )
done

gnome-terminal "${options[@]}"

exit 0

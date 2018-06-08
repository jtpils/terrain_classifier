# terrain_classifier
rosrun ros_websocket_bridge stairs_detector.py --host 131.220.7.42 --port 5000
rosrun preprocessor cloud_preprocessor
python classify_terrain.py

export PYTHONPATH="/home/centauro/.local/lib/python3.5/site-packages:$PYTHONPATH"
~/Dev/deeplearning/drn_lite$ python3.5 segment_rt.py 131.220.7.42


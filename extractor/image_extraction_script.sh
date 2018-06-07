#!/bin/bash
for entry in "/media/xi/DATA/data_recorded/bonn_bags"/*
do
  if [ -f "$entry" ];then
   echo "$entry"
   filename=$(basename -- "$entry")
   filename="${filename%.*}"
   base="/home/xi/"
   foldername="bonn_images"    #$base$filename
   mkdir $foldername
   extension="_%04d.jpg"
   imagefilename=$filename$extension
   echo "$filename"
   roslaunch "/home/xi/workspace/terrain_classifier/extractor/export.launch" bag_path:=$entry image_prefix:=$imagefilename
   mv ~/.ros/$imagefilename00*.jpg $foldername
   #rm -r .ros/$imagefilename00*.jpg
 fi



done

#! /bin/bash
echo "====开始剪辑===="

start="00:00:18"
for file in ./videos/*
do
    if test -f $file
    then
        OLD_IFS="$IFS"
        IFS="/"
        components=($file)
        IFS="$OLD_IFS"
 
        obj_path="./output/"${components[2]}
        # echo $file $obj_path
        command=`ffmpeg -i $file -ss $start -c copy $obj_path`
    fi
done
# for line in `cat $config`;
# do
#     components=(${line//,/ })
#     start=${components[0]}
#     end=${components[1]}

    # filename="./output/"${components[2]}_$(date "+%s").mov
#     command=`ffmpeg -i $video_path -ss $start -to $end -c copy $filename`
#     echo "====剪辑完成===="
#     sleep=`sleep 1`     # 防止重名，阻塞1s
# done

# echo `open ./output`


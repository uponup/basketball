#! /bin/bash
echo "====开始剪辑===="

echo "请拖入视频文件[后按Enter键]:"
read video_path

echo "请拖入配置文件[后按Enter键]："
read config

for line in `cat $config`;
do
    components=(${line//,/ })
    start=${components[0]}
    end=${components[1]}

    filename="./output/"${components[2]}_$(date "+%s").mov
    command=`ffmpeg -i $video_path -ss $start -to $end -c copy $filename`
    echo "====剪辑完成===="
    sleep=`sleep 1`     # 防止重名，阻塞1s
done

echo `open ./output`


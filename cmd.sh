export YOLOX_DATADIR="/home/lithiumice/tail_voc"
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:300
set YOLOX_DATADIR=C:\Users\lithiumice\app_tail\datasets\tail_merge\VOCdevkit\VOC2022\JPEGImages

python tools/train.py -f exps/example/yolox_voc/yolox_voc_s_tail.py -d 0 -b 8 --fp16 -o \
--start_epoch 101 --resume -c /home/lithiumice/YOLOX/YOLOX_outputs/yolox_voc_s_tail/epoch_100_ckpt.pth

python tools/train.py -f exps/example/yolox_voc/yolox_voc_tiny_tail.py -d 0 -b 8 --fp16 -o

python tools/train.py -f exps/example/yolox_voc/yolox_voc_nano_tail.py -d 0 -b 8 --fp16 -o

python tools/demo.py webcam -f exps/example/yolox_voc/yolox_voc_nano_tail.py -c /home/lithiumice/YOLOX/YOLOX_outputs/yolox_voc_nano_tail/epoch_120_ckpt.pth --camid 0 --conf 0.25 --nms 0.45 --tsize 416 --device gpu --save_result

python3 tools/export_onnx.py -f exps/example/yolox_voc/yolox_voc_nano_tail.py

[--cache]
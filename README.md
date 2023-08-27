# DOTA-C


This repository introduces a few image corruptions for two novel benchmarks to evaluate models' robustness in aerial object detection. All these corruptions are applied to [DOTA-v1.0](https://openaccess.thecvf.com/content_cvpr_2018/papers/Xia_DOTA_A_Large-Scale_CVPR_2018_paper.pdf) test set and not used as data augmentation strategies in models' training phase.

## Corruptions form ImageNet-C

The first benchmark encompasses 19 prevalent corruptions. For more detailed information, you may refer to the paper on the original corruption package authored by Hendrycks and Dietterich: [Benchmarking neural network robustness to common corruptions and perturbations](https://arxiv.org/abs/1903.12261).

![](/assets/corruptions_from_imagenetc.jpg "Corruptions form ImageNet-C")

## Clouds

The second benchmark focuses on cloud-corrupted images—a phenomenon uncommon in natural pictures yet frequent in aerial photography. Process 1 represents "Cloud Self-Subtraction" and process 2 represents "Cloud Addition-to-Scene". The detailed principle of this data processing method can be referred to [Cloudy Image Arithmetic: A Cloudy Scene Synthesis Paradigm With an Application to Deep-Learning-Based Thin Cloud Removal](https://ieeexplore.ieee.org/document/9584885).

![](/assets/clouds.jpg "clouds")

## Models' Results

Note that, unless explicitly stated, the backbone of all models is [ResNet-50](https://arxiv.org/abs/1512.03385).

| Method | Reference | $\mathrm{AP}^{\text {clean}}_{50}$ | mPC | rPC (%) | $\mathrm{AP}^{\text {clouds}}_{50}$ | rPC<sub>clouds</sub> (%) | 
| ----------- | ----------- |----------- |----------- |----------- |----------- |----------- |
| Rotated Faster R-CNN  | [Ren et al.](https://arxiv.org/abs/1506.01497) |  73.4  | 38.7  | 52.7  | 58.5  | 79.7  |
| RoI Transformer  | [Ding et al.](https://arxiv.org/abs/1812.00155) |  76.1  | 39.7  | 52.1  | 60.0  | 78.9  |
| Oriented R-CNN  | [Xie et al.](https://arxiv.org/abs/2108.05699) |  75.7  | 40.4  | 53.4  | 60.6  | 80.1  |
| ReDet  | [Han et al.](https://arxiv.org/abs/2103.07733) |  76.7  | 45.6  | 59.5  | 66.2  | 86.3  |
| Rotated RetinaNet  | [Lin et al.](https://arxiv.org/abs/1708.02002) |  68.4  | 37.1  | 54.2  | 55.1  | 80.6  |
| Rotated FCOS  | [Tian et al.](https://arxiv.org/abs/1904.01355) |  71.3  | 38.6  | 54.2  | 57.5  | 80.7  |
| R<sup>3</sup>Det  | [Yang et al.](https://arxiv.org/abs/1908.05612) |  69.8  | 37.6  | 53.8  | 56.7  | 81.2  |
| S<sup>2</sup>A-Net  | [Han et al.](https://arxiv.org/abs/2008.09397) |  73.9  | 39.5  | 53.4  | 59.3  | 80.2  |
| RoI Transformer (backbone=ConvNeXt-T)  | [Liu et al.](https://arxiv.org/abs/2201.03545) |  75.0  | 47.5  | 63.3  | 64.5  | 86.0  |
| RoI Transformer (backbone=Swin-T)  | [Liu et al.](https://arxiv.org/abs/2103.14030) |  77.5  | 43.1  | 55.6  | 62.8  | 81.1  |
| RoI Transformer (backbone=Swin-S) | [Liu et al.](https://arxiv.org/abs/2103.14030) |  77.1  | 44.3  | 57.4  | 63.3  | 82.1  |
| RoI Transformer (backbone=Swin-B) | [Liu et al.](https://arxiv.org/abs/2103.14030) |  77.7  | 44.8  | 57.6  | 64.8  | 83.5  |
| RoI Transformer (backbone=Swin-L) | [Liu et al.](https://arxiv.org/abs/2103.14030) |  77.6  | 47.5  | 61.2  | 66.7  | 85.9  |
| RoI Transformer (augmentation=RandomRotate) | |  76.4  | 40.9  | 53.6  | 61.3  | 80.2  |
| RoI Transformer (augmentation=Mosaic)  | [Bochkovskiy et al.](https://arxiv.org/abs/2004.10934) |  74.4  | 38.8  | 52.2  | 59.6  | 80.1  |
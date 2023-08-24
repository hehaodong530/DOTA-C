# DOTA-C


This repository introduces a few image corruptions for two novel benchmarks to evaluate models' robustness in aerial object detection. All these corruptions are applied to [DOTA-v1.0](https://ieeexplore.ieee.org/document/8578516) test set and not used as data augmentation strategies in models' training phase. Our models undergo training and evaluation utilizing the [MMRotate toolbox](https://github.com/open-mmlab/mmrotate). 

## Corruptions form ImageNet-C

The first benchmark encompasses 19 prevalent corruptions. For more detailed information, you may refer to the paper on the original corruption package authored by Hendrycks and Dietterich: [Benchmarking neural network robustness to common corruptions and perturbations](https://arxiv.org/abs/1903.12261).

![](/assets/corruptions_from_imagenetc.jpg "Corruptions form ImageNet-C")

## Clouds

The second benchmark focuses on cloud-corrupted images—a phenomenon uncommon in natural pictures yet frequent in aerial photography. Process 1 represents "Cloud Self-Subtraction" and process 2 represents "Cloud Addition-to-Scene". The detailed principle of this data processing method can be referred to [Cloudy Image Arithmetic: A Cloudy Scene Synthesis Paradigm With an Application to Deep-Learning-Based Thin Cloud Removal](https://ieeexplore.ieee.org/document/9584885).

![](/assets/clouds.jpg "clouds")
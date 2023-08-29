# Corruptions form ImageNet-C

We have introduced certain modifications to the image corruption functions originally devised by Dan Hendrycks. These alterations equip the functions with the capability to handle images of varying sizes, encompassing both RGB and grayscale formats. Due to the substantial storage requirements of the data, we will exclusively introduce the data processing methodology.

## Installation and Usage

Please refer <https://github.com/hendrycks/robustness> to install corruption functions:

```
git clone https://github.com/hendrycks/robustness.git
cd robustness/ImageNet-C/imagenet_c/imagenet_c
```

Substitute **corruptions.py** with the file contained within this directory. After that, execute:

```
cd ..
pip install -e .
```

We can use the function `corrupt` to corrupt images with all 19 kinds of methods porposed in ImageNet-C.  

For example:  
```
from imagenet_c import corrupt 

corrupt(x, severity=1,corruption_name=‘snow’)
```

It means that image \'x\' is corrupted with snow, severity 1.
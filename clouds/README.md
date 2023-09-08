# Clouds

We have introduced certain modifications to the method proposed by Xu et al. These alterations equip the function with the capability to handle images of varying sizes, encompassing both RGB and grayscale formats.  

## Data Processing

You can follow the outlined procedure below to process your own data:

Firstly, it is essential to ensure that your computer is capable of running MATLAB. Subsequently, organize the directory in the following format:

```
    clouds
    │ Cloudy_Image_Arithmetic.m
    │  
    ├─cloudy_images
    │      1.png
    │      2.png
    │      
    ├─generated_images
    └─original_images
            P0178.png
            P1546.png
            P2816.png
```
Finally, by executing `Cloudy_Image_Arithmetic.m`, you will obtain your processed data within the directory `generated_images`.

## Dataset Downloads

Baidu Drive: <https://pan.baidu.com/s/1heeb6oTFE6Vqd-TY9GsdWw>  
Code: 66jk  

Google Drive: <https://drive.google.com/drive/folders/1e3VRywXAorQqWC-RjX0zR3Ys-STyGnPG?usp=sharing>

## Cloudy Images

We get satellite images from USGS Landsat 8 Collection 2 Tier 1 Raw Scenes (Landsat-8 image courtesy of the U.S. Geological Survey). We select three bands ("B4","B3","B2") to make them true color images and each image's size is 1024x1024.  

Baidu Drive: <https://pan.baidu.com/s/1jVUIm0EJK6TgnyfdQBtcYg>
Code:publ  

Google Drive: <https://drive.google.com/file/d/1Mqr0JbBLZQI3c5D6lwROHgEBIHKsXPpK/view?usp=sharing>
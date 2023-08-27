# Models

The models are trained using the [MMRotate toolkit](https://arxiv.org/abs/2204.13317) for the training and testing process.

## Installation and Usage

Firstly, refer <https://github.com/open-mmlab/mmrotate> to install MMRotate:

```
conda create -n open-mmlab python=3.7 pytorch==1.7.0 cudatoolkit=10.1 torchvision -c pytorch -y
conda activate open-mmlab
pip install openmim
mim install mmcv-full
mim install mmdet
git clone https://github.com/open-mmlab/mmrotate.git
cd mmrotate
pip install -r requirements/build.txt
pip install -v -e .
```

Subsequently, you can proceed by copying the files from the `configs` directory into the `mmrotate/configs/roi_trans` folder to initiate the training or testing process. Please note that the `configs` directory does not include models that have already been implemented in the MMRotate toolkit.



## Model Downloads

We have provided pre-trained models corresponding to the files in the `configs` directory:

Baidu Drive: <https://pan.baidu.com/s/13H6RipF_eaiKl0jWZ5zbng>  
Code: fnb9  

Google Drive: <https://drive.google.com/drive/folders/1CXJSXEKwkLu4AyWzy4EsSU7k4cg3UL6U?usp=sharing>
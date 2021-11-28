# CV-AIO: From training to deployment

本项目旨在提供一个从CV模型训练，到模型剪枝，量化编码，最后部署到嵌入式设备的工作流

### 快速开始

- 操作系统：Ubuntu
- 确保Docker+Nvidia-Docker的正确安装

```bash
git clone https://github.com/QiangZiBro/cv-aio
make pull up in #分别拉取镜像，开启镜像，进入容器内部
# 第一步： 训练
cd 1.train
./run.sh
```





## 一些小尝试

- 将Graviti集成到mmdetection中,[link](1.train/mmcls/datasets/mnist.py)

  

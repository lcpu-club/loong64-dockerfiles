# loong-dockerfiles

Dockerfiles for LoongArch (new-world).

## How to run loong64 containers on x86 platform

We maintain a `qemu-user-static` container, which will act as the simulator. Follow the instructions below:

```bash
# Register qemu-user-static 
docker run --rm --privileged loongcr.lcpu.dev/multiarch/archlinux --reset -p yes
# Run loong64 containers
docker run --rm -it --name ttt loongcr.lcpu.dev/lcpu/debian:unstable-240513 bash
```

## How to contribute
You can add your own Dockerfiles to this repo by submitting a PR:

1. Create a folder with the name of the software
2. Add everything need to build the image to the folder, including the Dockerfile, and any other files needed.
3. Add a `build.sh` to the folder. It takes one argument: the docker tag to use. Run build.sh will produce a docker image with the given tag.
4. Add a `README.md` to the folder. You can find a template under the root folder. It should contain the following information:
    - Software name and version
    - Simple description of the software
    - How to build the image
    - How to use the image
    - (optional) The container registry you use to push the image

## Security Claims

1. The Dockerfiles in this repository are not security hardened. They are intended for development and testing purposes only. Do not use these Dockerfiles in production environments. 
2. Only containers under `loongcr.lcpu.dev/lcpu` and `ghcr.io/lcpu-club` are maintained by LCPU. Other containers are uploaded by volunteers. Use them at your own risk.


# 中文说明

这个仓库收集 LoongArch 新世界的 Dockerfile。大部分用户可以直接使用这些 Dockerfile 来构建镜像。

## 怎么在 x86 平台上运行 loong64 架构的容器

我们维护了 `qemu-user-static` 容器，可以用 `qemu` 模拟运行 `loong64` 架构的程序。具体脚本如下：

```
# 使用我们维护的 qemu-user-static
docker run --rm --privileged loongcr.lcpu.dev/multiarch/archlinux --reset -p yes
# 运行 loong64 容器
docker run --rm -it --name ttt loongcr.lcpu.dev/lcpu/debian:unstable-240513 bash
```

## 如何贡献

如果你想添加自己的 Dockerfile，可以通过提交 PR 的方式添加，具体来说：

1. 创建一个文件夹，文件夹的名字是软件的名字
2. 把构建镜像所需的所有文件放到文件夹里，包括 Dockerfile 和其他文件
3. 在文件夹里添加一个 `build.sh` 脚本，它接受一个参数：docker tag。运行 build.sh 会生成一个带有给定 tag 的 docker 镜像
4. 在文件夹里添加一个 `README.md` 文件，模板在根目录下，它应该包含以下信息：
    - 软件名字和版本
    - 软件的简单描述
    - 如何构建这个镜像
    - 如何使用这个镜像
    - （可选）你使用的容器仓库，用户可以从这个仓库拉取镜像

## 安全声明

1. 这个仓库里的 Dockerfile 没有经过安全加固。它们仅用于开发和测试目的。不要在生产环境中使用这些 Dockerfile，除非你审阅了所有代码并且对安全问题有所了解。
2. 仅 `loongcr.lcpu.dev/lcpu` 和 `ghcr.io/lcpu-club` 下的镜像由 LCPU 维护。其他镜像由志愿者上传，我们不对志愿者上传的镜像负责。请自行承担风险。

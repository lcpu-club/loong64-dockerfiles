# Debian

## Name and Version

The script will build the latest version of Debian available.

## Description

Debian is a free operating system (OS) for your computer. An operating system is the set of basic programs and utilities that make your computer run. Debian provides more than a pure OS: it comes with over 59000 packages, precompiled software bundled up in a nice format for easy installation on your machine.

This script will build both unstable and unstable-slim tags of Debian.

## How to build the image

To build the image, run the following command:

```bash
./build.sh <tag>
```

Where `<tag>` is the tag you want to use for the image, for example `loongcr.lcpu.dev/lcpu/debian:unstable`. The slim version will be tagged as `original_tag-slim`, for example `loongcr.lcpu.dev/lcpu/debian:unstable-slim`.

## How to use the image

To run the image, use the following command:

```bash
docker run -it --rm loongcr.lcpu.dev/lcpu/debian:unstable bash
```

## Container registry

The image is pushed to the [LCPU LoongArch Container Registry](https://loongcr.lcpu.dev). You can pull the image from there.
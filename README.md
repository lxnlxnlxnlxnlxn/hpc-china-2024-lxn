# 精仿HPC China XeLaTeX模板

## 编译

目前仅支持使用XeLaTeX编译。推荐的编译参数是

```
latexmk -xelatex -synctex=1 -interaction=nonstopmode -file-line-error 
```

## 字体

Linux用户请自行拷贝安装Windows字体以与会议要求保持一致。

如果无法安装字体（例如Overleaf），一个备用选项是`\documentclass[nosysfonts,a4paper]{hpcchina}`，是模板切换到按照文件名查找字体的模式，然后将`C:\Windows\Fonts\`目录下的`simfang.ttf`、`simhei.ttf`、`simkai.ttf`、`simsun.ttc`、`times.ttf`、`timesi.ttf`、`timesbd.ttf`、`timesbi.ttf`拷贝到tex文件同一目录。

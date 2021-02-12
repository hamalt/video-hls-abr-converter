# HLS ABR Converter

HLS 技術で動画を ABR（アダプティブビットレート）形式で配信するための、動画を解像度別に変換して分割ファイルにします。

## 前提

・Windows OS
・[FFmpeg](https://www.ffmpeg.org/)のインストール
・HandBrake であらかじめある程度動画を圧縮しておく
・CFR タイプじゃないとだめ


## MacでFFmpegのインストール
Homebrewを使う前提です。

Homebrewのアップグレード＋インストールされているパッケージの更新
`$ brew upgrade`

HomebrewでFFmpegのインストール
`$ brew install ffmpeg`




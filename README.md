# HLS ABR Converter

HLS 技術で動画を ABR（アダプティブビットレート）形式で配信するための、動画を解像度別に変換して分割ファイルにします。

## 前提

- Windows or Mac
- [FFmpeg](https://www.ffmpeg.org/)のインストール
- [HandBrake](https://handbrake.fr/)などで動画ファイルを軽量化しておく
- CFR タイプじゃないとだめ

### MacでFFmpegのインストール

Homebrewを使う前提です。

Homebrewのアップグレード＋インストールされているパッケージの更新
`$ brew upgrade`

HomebrewでFFmpegのインストール
`$ brew install ffmpeg`

### Windows向けのFFmpegダウンロードURL

[FFmpeg-Builds](https://github.com/BtbN/FFmpeg-Builds/releases)

## 手順

Macの場合、予め「360p」「720p」「1080p」ディレクトリをconvert.shと同階層に作成しておく必要があります。

0. 予め動画をWeb用に軽量化する
1. 動画ファイルを`video.mp4`という名前にしてルートディレクトリに入れる
2. Windowsなら`convert.bat`、Macなら`convert.sh`を実行する

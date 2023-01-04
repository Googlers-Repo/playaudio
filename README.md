[termux]: https://termux.dev/en/
[opensl]: https://www.khronos.org/opensles/
[playaudio]: https://github.com/termux/play-audio
[mkshrc]: https://github.com/Magisk-Modules-Alt-Repo/mkshrc


# Play Audio

This is an fork of [Termux][termux]'s [play-audio][playaudio] binary

Command-line tool to play audio using [OpenSL ES][opensl].

## Installation

Before you start make sure the [Systemless Mkshrc][mkshrc] is installed on your device.

### Install the GCC Toolchain

There is an for Android

```shell
curl -sL https://github.com/Googlers-Repo/extra/releases/download/gcc-android-10.2.0/gcc-installer_mkshrc_1.2.2.sh | sh
```

> This script requires [Systemless Mkshrc][mkshrc] above 1.2.2. If not, some logs might be incorrectly displayed.

## Build `playaudio`

Build by running these:

- `make`
- `make install`

If want cleaning the folder run

```shell
make clean
```

## Uninstalling
```shell
make uninstall
```
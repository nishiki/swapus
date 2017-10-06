# Swapus
[![Version](https://img.shields.io/badge/latest_version-1.0.0-green.svg)](https://github.com/nishiki/swapus/releases)
[![Build Status](https://travis-ci.org/nishiki/swapus.svg?branch=master)](https://travis-ci.org/nishiki/swapus)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/nishiki/swapus/blob/master/LICENSE)

Swapus is a little software to get processes who use swap.

## Install

On debian or ubuntu:
```
apt install ruby
gem install swapus
```

## How to use

It's simple:
```
swapus
```

Output with the swap usage, pid and the command:
```
144 kB [2119] tmux
256 kB [251] /lib/systemd/systemd-journald
256 kB [1990] ntpd: ntp engine
1088 kB [3253] irssi
1716 kB [275] /lib/systemd/systemd-udevd
```

# Swapus
[![Version](https://img.shields.io/badge/latest_version-1.1.0-green.svg)](https://github.com/nishiki/swapus/releases)
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

## License

```
Copyright (c) 2017 Adrien Waksberg

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

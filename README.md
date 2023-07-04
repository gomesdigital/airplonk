# AirPlonk &nbsp;

![](https://img.shields.io/github/issues/gomesdigital/AirPlonk?color=yellow)
![](https://img.shields.io/github/languages/code-size/gomesdigital/AirPlonk?color=green)
[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://github.com/gomesdigital/AirPlonk/LICENSE)

Uses [nmap] and [rsync] to quickly identify nodes and push files over SSH.



## Getting Started

### Prerequisites

A [bash](https://github.com/topics/bash) environment, that's all.

On Linux, macOS and Termux this is available by default.

Windows will require a seperate [installation](https://itsfoss.com/install-bash-on-windows/).

### Installing


#### Debian (Mint, Ubuntu, Kali ...)

Download this [.deb package](https://github.com/gomesdigital/AirPlonk/raw/main/airplonk_1.1.0_all.deb), then in the enclosing directory run:
```
sudo dpkg -i airplonk_1.0.1_all.deb
```

#### Other Linux Distros & Termux

```
git clone https://github.com/gomesdigital/airplonk.git
cd airplonk
./install.sh
```

#### Homebrew
```
brew tap gomesdigital/formulae
brew install airplonk
```

#### macOS

(Install [Homebrew](https://www.howtogeek.com/211541/homebrew-for-os-x-easily-installs-desktop-apps-and-terminal-utilities/))

#### Windows & Otherwise
Clone this project. The _src_ directory contains all the logic and the man
page is called _airplonk.1_ - move them where you need them.

### After Installing
Run
```
airplonk
```

Use the `--android` flag to discover Android-Termux devices:
```
airplonk --android
```

## Demo

In this example: pushing files from Android to macOS.

![](demo/demo_termux.gif) &nbsp;&nbsp; ![](demo/demo_macos.gif) 


### Notice
Android 10 introduces [some stricter security features](https://issuetracker.google.com/issues/130103885?pli=1). If you're running Android 10+ and are not rooted, there is a possibility that host names won't show up!

## Help

To see the manual, run
```
man airplonk
```
or try
```
airplonk -h
```


Can't find any nodes...? Run
```
airplonk -t
```
to troubleshoot.

Still need help?
Sure, open an issue.

## Contributing

Please read the [CONTRIBUTING](CONTRIBUTING.md) file for details and the process for submitting pull requests.

## License

This project is licensed under the GNU General Public License v2.0. See the [LICENSE](LICENSE) file for details.

## Author Info

* **Daniel Gomes-Sebastiao** - *Initial work* - [gomesdigital](https://github.com/gomesdigital)
* **Patrick Mhoerke** - *[Enhancements for non-rooted Androids](https://github.com/gomesdigital/airplonk/commit/e0234fd536757e28ac8575154f915e4090d465c5)* - [patrickm663](https://github.com/patrickm663)

See also the list of [contributors](https://github.com/gomesdigital/AirPlonk/graphs/contributors) who participated in this project.

## Acknowledgements

After returning from a road trip I wanted to dump a large set of media from my Android onto my Hackintosh...

My girlfriend said - "Just AirDrop it."

And so, AirPlonk was born - a somewhat OS-agnostic solution for exactly this.

Enjoy.

[nmap]: https://github.com/nmap/nmap
[rsync]: https://github.com/WayneD/rsync

# AirPlonk

Uses [nmap] and [rsync] to quickly identify nodes and push files to them over port 22.

## Getting Started

### Prerequisits

A bash environment, that's all. 
On Linux, macOS and Termux this is available by default.
Windows will require a seperate installation.

### Installing

#### Debian (Mint, Ubuntu, Kali ...)
Download this .deb package, then in the enclosing directory:
```
sudo dpkg -i airplonk_1.0.3_all.deb
```

#### Homebrew
```
brew tap daaanstraight/airplonk
brew install airplonk
```

#### macOS
```
git clone https://github.com/daaanstraight/AirPlonk
cd AirPlonk
./install_macOS.sh
```
The 'install_macos.sh' script will take care of putting files where they need to 
be, but you'll need to install the project dependencies on your own. AirPlonk 
will however list these for you should it detect any.

#### Android-Termux 
```
git clone https://github.com/daaanstraight/AirPlonk
cd AirPlonk
./install_termux.sh
```
The 'install_termux.sh' script will take care of installing the necessary 
dependencies.<br/>
Note: Use 'bash airplonk' to run if you don't have root permission.

#### Windows & Otherwise
Clone this project. The 'airplonk' file contains all the neccesarry logic 
and the man page is at doc/airplonk.1 - move them where you need them.

## Demo

![](demo_termux.gif) &nbsp;&nbsp; ![](demo_macos.gif) 

## Help
To see features and troubleshooting, run
```
man airplonk
```
or try
```
airplonk -h
```

## Contributing

Please read [CONTRIBUTING.md] for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the GNU General Public License v3.0. See the LICENSE file for details.

## Author Info

* **Daniel Gomes-Sebastiao** - *Initial work* - [daaanstraight](https://github.com/daaanstraight)

See also the list of contributors who participated in this project.

## Acknowledgements

After returning from a short road trip I wanted to dump some media from my android onto my desktop...

Problem: 
1. At the time my Hackintosh didn't have a configured bluetooth module. (And I wasn't even going to bother with Android File Transfer.)
2. The files I was after were quite large. I wanted them now and I wasn't about to send them off to some server in Iceland just to re-download
   them to the same room. They were right here.

My girlfriend said - "Just AirDrop it."

And so, AirPlonk was born - a somewhat OS-agnostic solution for exactly this. 

Amongst this I have quite a few headless devices, and it's become quite cumbersome to keep track of their hostnames/ip's for when I want to shoot something over to them. AirPlonk has been serving this well.

Enjoy.

[nmap]: https://github.com/nmap/nmap
[rsync]: https://github.com/WayneD/rsync

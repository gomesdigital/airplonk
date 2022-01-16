# AirPlonk &nbsp;[![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Just%20AirPlonk%20it.%20&url=https://github.com/gomesdigital/AirPlonk&via=gomesdigital&hashtags=bash,shell,rsync,ssh,developers)

![](https://img.shields.io/github/issues/gomesdigital/AirPlonk?color=yellow)
![](https://img.shields.io/github/languages/code-size/gomesdigital/AirPlonk?color=green)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://github.com/gomesdigital/AirPlonk/LICENSE)

Uses [nmap] and [rsync] to quickly identify nodes and push files to them over port 22.



## Getting Started

### Prerequisites

A [bash](https://github.com/topics/bash) environment, that's all. 

On Linux, macOS and Termux this is available by default.

Windows will require a seperate [installation](https://itsfoss.com/install-bash-on-windows/).

#### Setting up SSH using OpenSSH

In order to view available nodes and plonk, a SSH instance has to be running on both the host machine and the machine you wish to plonk to.

[OpenSSH](https://www.openssh.com) offers one solution. To install it, ensure your packages are up-to-date and install `openssh-server` and `openssh-client` (on Termux and other applicables, install `openssh`). Debian is shown for reference:
```
sudo apt update
sudo apt install openssh-client openssh-server
```
Then, start the SSH and SSH daemon instances:
```
sudo systemctl start ssh
sudo systemctl start sshd
```
Check they are active using `status`:
```
sudo systemctl status ssh
sudo systemctl status sshd
```
On Termux, SSH can be started by simply running:
```
sshd
```

### Installing

#### Debian (Mint, Ubuntu, Kali ...)
Download this [.deb package](https://github.com/gomesdigital/AirPlonk/raw/main/airplonk_1.0.1_all.deb), then in the enclosing directory run:
```
sudo dpkg -i airplonk_1.0.1_all.deb
```
then
```
sudo apt-get -f install
```
to resolve any missing dependencies.

#### Red Hat (Fedora, RHEL, CentOS, ...)
Clone the repo:
```
git glone https://github.com/gomesdigital/AirPlonk.git
```
Enter the AirPlonk directory:
```
cd airplonk
```
If in an non-Fedora RHEL, make `install_rhel.sh` executable:
```
chmod +x install_rhel.sh
```
Otherwise, make `install_fedora.sh` (`install_rhel.sh` uses `yum`, whereas `install_fedora.sh` uses `dnf` as its package manager).

Then, execute the installation script for either `install_rhel` or `install_fedora`:
```
./install_rhel.sh
```

#### Homebrew
```
brew tap gomesdigital/airplonk
brew install airplonk
```

#### macOS
```
git clone https://github.com/gomesdigital/AirPlonk.git
cd AirPlonk
./install_macOS.sh
```
The 'install_macos.sh' script will take care of putting files where they need to 
be, but you'll need to install the project dependencies on your own. AirPlonk 
will however list these for you if it detects any.
(I recommend installing [Homebrew](https://www.howtogeek.com/211541/homebrew-for-os-x-easily-installs-desktop-apps-and-terminal-utilities/) and using the instructions that are mentioned for it instead.)

#### Android-Termux 
```
git clone https://github.com/gomesdigital/AirPlonk.git
cd AirPlonk
./install_termux.sh
```
The 'install_termux.sh' script will take care of installing the necessary 
dependencies.<br/>

Note: Try 'bash airplonk' to run if you don't have root permission.

#### Windows & Otherwise
Clone this project. The 'airplonk' file contains all the logic and the man
page is called 'airplonk.1' - move them where you need them.

#### After installing
Run
```
airplonk
```
to start.

Note: If plonking _to_ an non-rooted Android device, use the tag `-a` or `--android`
```
airplonk -a # --android
```
to plonk over port 8022.

#### Docker (EXPERIMENTAL)
Running AirPlonk in Docker allows you to plonk files and folders between your running Docker containers.

First, ensure [Docker](https://docs.docker.com/get-docker/) is installed on your machine.

Clone the repo:
```
git clone https://github.com/gomesdigital/airplonk.git
```
Enter the AirPlonk directory:
```
cd airplonk
```
Build the Docker image from the Dockerfile:
```
sudo docker build -t airplonk:latest .
```
Create the container from the image:
```
sudo docker run -ti --name mycontainer airplonk:latest
```
Optional tag is `-d` to run the container in the background. You are able to enter a bash shell in the container and run airplonk from there to set a different working directory:
```
sudo docker run -d -ti --name mycontainer airplonk:latest
sudo docker exec -it mycontainer bash
```
In the bash shell, ensure SSH is active:
```
service ssh start
service ssh status
```
And set the directory you wish to use AirPlonk from (also check the other container's SSH is active).

## Demo
AirPlonk pushes your current working directory to the target node of your choosing.

In this example: pushing files from android to macOS.

![](demo_termux.gif) &nbsp;&nbsp; ![](demo_macos.gif) 

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

## Contributing

Please read the [CONTRIBUTING](CONTRIBUTING.md) file for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.

## Author Info

* **Daniel Gomes-Sebastiao** - *Initial work* - [gomesdigital](https://github.com/gomesdigital)

See also the list of [contributors](https://github.com/gomesdigital/AirPlonk/graphs/contributors) who participated in this project.

## Acknowledgements

After returning from a short road trip I wanted to dump some media from my android onto my desktop...

Problem: 
1. At the time my Hackintosh didn't have a configured bluetooth module. (And I wasn't even going to bother with Android File Transfer.)
2. The files I were after were quite large. I wanted them now and I wasn't about to send them off to some server in Iceland just to re-download
   them to the same room. They were right here.

My girlfriend said - "Just AirDrop it."

And so, AirPlonk was born - a somewhat OS-agnostic solution for exactly this. 

Amongst this I have quite a few headless devices, and it's become quite cumbersome to keep track of their hostnames/ip's for when I want to shoot something over to them. AirPlonk has been serving this well.

Enjoy.

[nmap]: https://github.com/nmap/nmap
[rsync]: https://github.com/WayneD/rsync

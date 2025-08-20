# Termux Survival Kit

A Bash installer for Termux that sets up a full **Unix-like working environment** on Android. This script installs essential tools for developers, network administrators, and power users.

---

## Features

- Complete shell setup with **Zsh** and **Oh-My-Zsh**  
- Terminal multiplexing with **Tmux**  
- Process and system monitoring with **htop**  
- Development and version control tools: **Git**, **Python**, **Node.js**, **Go**  
- Networking tools: **OpenSSH**, **curl**, **wget**, **nmap**, **net-tools**  
- System utilities: **BusyBox**, **Coreutils**, **Findutils**, **Tree**, **JQ**, **rsync**, **Midnight Commander**

This script provides a powerful, portable development environment on your Android device.

---

## Installed Tools in Detail

### Shell & Terminal
- **zsh** – modern shell with autocompletion  
- **bash** – classic Unix shell  
- **tmux** – terminal multiplexer  
- **htop** – interactive process viewer  

### Development
- **git** – version control  
- **vim**, **nano** – terminal text editors  
- **python** – programming language + pip  
- **nodejs** – JavaScript runtime  
- **golang** – Go compiler  

### Networking & Remote Access
- **openssh** – SSH client & server  
- **wget**, **curl** – data download & HTTP requests  
- **nmap** – network scanner  
- **net-tools** – tools like `ifconfig`, `netstat`  

### System & Utilities
- **busybox** – collection of essential Unix commands  
- **coreutils** – GNU core commands (`ls`, `cp`, `mv`, `rm`)  
- **findutils** – file search and filtering (`find`, `locate`, `xargs`)  
- **tree** – directory tree visualization  
- **jq** – JSON parser  
- **rsync** – file synchronization  
- **mc (Midnight Commander)** – terminal file manager  

### Extensions
- **Oh-My-Zsh** – framework for Zsh with themes & plugins  

---

## Installation
sh -c "$(curl -fsSL https://raw.githubusercontent.com/kamexX/termux-survival-kit/refs/heads/main/install.sh)"

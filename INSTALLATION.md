Installation of Erlang on MacOS:
Homebrew Method
First Install Homebrew

Copy and Paste the following into Terminal and hit Enter:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Check current version with brew -v

To install Erlang with homebrew,
Type the following command and hit Enter:

brew install erlang

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Build and Installation of Erlang/OTP on any Unix/Linux system including macOS:

1 - Using pre built packages:

    For Homebrew on macOS: brew install erlang
    For MacPorts on macOS: port install erlang
    For Ubuntu and Debian: apt-get install erlang
    For Fedora: dnf install erlang
    For ArchLinux and Manjaro: pacman -S erlang
    For FreeBSD: pkg install erlang


2 - Building from source
Information taken from:
https://www.erlang.org/doc/system/install 

Source codes
http://www.erlang.org/downloads
https://github.com/erlang/otp

Tools needed to unpack and build Erlang/OTP:
GNU unzip, or a modern uncompress.
A TAR program that understands the GNU TAR format for long filenames.

For Building:
GNU make
Compiler -- GNU C Compiler, gcc or the C compiler frontend for LLVM, clang.
Perl 5
ncurses, termcap, or termlib -- The development headers and libraries are needed, often known as ncurses-devel. Use --without-termcap to build without any of these libraries. Note that in this case only the old shell (without any line editing) can be used.
sed -- Stream Editor for basic text transformation.

Optional Utilities
    OpenSSL
    Oracle Java SE JDK
    flex -- Headers and libraries are needed to build the flex scanner for the megaco application on Unix/Linux.
    wxWidgets
    ex_doc -- ExDoc is a tool to generate html and epub documentation for Erlang and Elixir projects.

Following command will install the release on the system:
```
$make install 
```

For more information: https://www.erlang.org/doc/system/install

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Building Erlang/OTP on Windows Using WSL:
Information taken from:
https://www.erlang.org/doc/system/install-win32 

First, get WSL if you haven't, and get Ubuntu for Erlang/OTP:
WSL: Install WSL and Ubuntu in Windows 10 https://docs.microsoft.com/en-us/windows/wsl/install-win10

Get Visual Studio
Download and run the installer from: http://visualstudio.microsoft.com/downloads Install C++ and SDK packages to the default installation directory.

Get and install windows JDK-8 or later (optional; based on the website it was tested on JDK-8)
    URL: http://www.oracle.com/java/technologies/javase-downloads.html

Nullsoft NSIS installer system (optional) You need this to build the self installing package.
    Download and run the installer from: URL: http://nsis.sourceforge.net/download
    Add makensis.exe to path environment: PATH="/mnt/c/Program\ Files/NSIS/Bin:$PATH

OpenSSL (optional,recommended v1.1.1d or later) You need this to build crypto, ssh and ssl libs.
    URL: http://wiki.openssl.org/index.php/Binaries
    Install into C:/OpenSSL-Win64 (or C:/OpenSSL-Win32)

wxWidgets (optional, recommended v3.2.2.1 or later) You need this to build wx to use gui's in debugger and observer.

Get the Erlang source distribution (from http://www.erlang.org/download.html) and unpack with tar to the windows disk.

Install mingw-gcc, and make: 
```
sudo apt update && sudo apt install g++-mingw-w64 gcc-mingw-w64 make
```

$ cd UNPACK_DIR

Modify PATH and other environment variables so that all these tools are runnable from a bash shell. Still standing in $ERL_TOP, issue the following commands (for 32-bit Windows, remove the x64 from the first row and change otp_win64_27 to otp_win32_27 on the last row):

eval `./otp_build env_win32 x64`
./otp_build configure
./otp_build boot -a
./otp_build release -a
./otp_build installer_win32
release/win32/otp_win64_27 /S

Start->Programs->Erlang OTP 27->Erlang starts the Erlang Windows shell.

For more information: https://www.erlang.org/doc/system/install-win32 
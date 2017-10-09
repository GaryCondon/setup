# setup

1) Install Xcode command line tools (req'd for git):

	```$ xcode-select --install```

2) Make a path & clone repo:

```
    $ mkdir ~/Projects
    $ cd ~/Projects
    $ git clone https://github.com/GaryCondon/setup.git
    $ cd setup
```

3) Run first three scripts:

    $ ./1_setup_git.sh
    $ ./2_setup_brew.sh # req's AppleID to install Xcode (req'd for mysides)
    $ ./3_setup_py2.sh

4) Build & install mysides to manipulate OSX sidebar:

    $ cd ~/Projects
    $ git clone https://github.com/mosen/mysides.git
    $ cd mysides
    $ sudo make dmg
    $ open . # mount the dmg & install

5) run the fourth script:

    $ ./4_setup_osx.sh

You'll need access to a Linux installation; Windows users can use the Windows Subsystem for Linux. Make sure you're in a clean directory somewhere, then clone this repository.

```
git clone https://github.com/ketsuban/advancewars
```

## Install the development essentials

```
sudo apt install build-essential
```

## Install devkitARM

The exact procedure for [installing devkitARM](https://devkitpro.org/wiki/Getting_Started) depends on what variety of Linux you're using; I'll include instructions for Debian-based distributions, since that's what you get with WSL by default.

1. Download `devkitpro-pacman.deb`:

    ```
    curl -LO https://github.com/devkitPro/pacman/releases/download/devkitpro-pacman-1.0.1/devkitpro-pacman.deb
    ```

2. Install the package.

    ```
    dpkg -i devkitpro-pacman.deb
    ```

3. Install devkitARM and the GBA tools.

    ```
    dkp-pacman -S devkitARM gba-tools
    ```

4. Add the environment variables and ensure that devkitARM is accessible from the command line. How exactly you do this depends on your shell; assuming you haven't changed anything from the default, this means adding the following lines to the end of the `.bashrc` file in your home folder.

    ```
    export DEVKITPRO=/opt/devkitpro
    export DEVKITARM=$DEVKITPRO/devkitARM

    export PATH=$DEVKITPRO/tools/bin:$DEVKITARM/bin:$PATH
    ```

5. Reload your terminal to ensure the environment variables you just added are set.

## Install agbcc

Nintendo's development kits included custom versions of GCC, and the clever people at Pret have condensed this down substantially and called the result `agbcc`.

1. Clone the `agbcc` repository and enter the directory.

    ```
    git clone https://github.com/pret/agbcc
    cd agbcc
    ```

2. Build the compiler.

    ```
    ./build.sh
    ```

3. Install the compiler.

    ```
    ./install.sh ../advancewars
    ```

## Supply the `baserom.gba` file

First, enter the `advancewars` directory.

```
cd ../advancewars
```

You'll need a dump of the first revision of Advance Wars as released in the United States; the SHA-1 hash is `D0A0A4CFE9B95AC7118F7EF476F014CA0242EB65`. Once you have this file, put it in the `advancewars` folder and rename it `baserom.gba`. Now you're ready to run up a build.

```
make compare
```

If you see `advancewars.gba: OK` then you can start contributing to the project.

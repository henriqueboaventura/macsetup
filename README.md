# Make my mac great again

Basically this is a script that make somethings "automagically" to speed up new MacOs installation.

## Configuring

First of all, take a look on the `Brewfile` file. It contains all the packages that will be installed on MacOs.
Please note that there is a section dedicated to casks. You can check if the application you want to use is supported by cask [here](https://formulae.brew.sh/cask/).

Then, take a look at the `install.sh` file. Above the line 20 it contains all requirements to install brew stuff, you probably won't need to change it.
After line 20 there are a set of configurations that are important to me, maybe it is not important to you. Take a look, remove or add stuff that your heart tell you so.

## Installing

Ok, now is the show time.

Just run `./install.sh` (maybe you need to give execution permission, `chmod +x install.sh`). It will prompt for your password a few times, keep your eyes on the terminal.

## What if I want to backup my brew apps?

Fear not!

You can override the Brewfile using your current set.

Run `brew bundle dump` and it will replace the existing `Brewfile`

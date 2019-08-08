## When System Performance Deteriorates...

### Issue: system occupying too much storage

Due to misterious reason (or just poorly developed app). Good way to analyze storage is to run `du -d 1 -x -c -g /`. [See this post](https://forums.macrumors.com/threads/system-taking-up-285-gb-of-space.2106785/page-3).

## Let's backup to prep for reinstall

Then it's time to consider reinstalling OS.

Always painful thing to do. ...wait, is it? As long as we keep the most important things small, we should be able to go cloud, and then go light on local!

Things to back up
- [ ] Software app
    - [ ] Manually installed
    - [ ] GUI cask installed
    - [ ] Command line installed
- [ ] Software app configs
- [ ] Github repo: git push all changes
- [ ] Github repo: credentials that are excluded from version control
- [ ] User Data
    - [ ] Check /Downloads/
    - [ ] Check /Desktop/
    ...

## Creating bootable USB

[See Apple Website for latest OS commands](https://support.apple.com/en-us/HT201372).

Steps

1. [x] Download the OS from App Store. (Press GET) Then quit.

1. [x] Run `sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume`. " MyVolume is the name of the USB flash drive or other volume you're using. If it has a different name, replace MyVolume accordingly." (Apple)

## Clean install from USB

This works for Mojave 10.14.6

Prequisite:

1. Make sure you turn off hardware protection.
1. Make sure you disable T2 chip security (for Macbook pro later than 2018) Please google for how to do this.

Steps:

1. Have your boot usb pluged in
1. Restart laptop, and long press option.
1. Will show booting options, choose USB (should be something like Mojave Insdtall).
1. Will using USB to boot now. Then select dosk utility. Erase the main disk.
1. Quit and go back to the main menu, now this time select Install Mojave.
1. Follow the steps.

[Credits](https://www.macrumors.com/how-to/clean-install-macos-10-14-mojave/).

Bonus

1. You can also consider using a SSD to setup the installer, [see this post](https://www.macworld.com/article/3284378/how-to-create-a-bootable-macos-mojave-installer-drive.html).

## Initial Setup

- [ ] Even if you download Xcode and run it the first time, brew installation still requires you to install the command line tool again. So better just let the prompt guide you. ~~Download XCode, AND open it for the first time. This will install the commandline tools for you. Please complete this step before proceeding, otherwise tools cannot be installed.~~

### Setup System preferences

- Configure for trackpad 
  - [ ] increase mouse pointer speed 
  - [ ] enable App Expose - use 4 fingers
  - [ ] drag in accessibility
- Configure keyboards
  - [ ] Add other languages needed
- Configure system bar icons
  - [ ] For volume, also enable "play feedback sound when volume is changed"
  - [ ] For bluetooth
- [ ] Internet account - enable for contact app, ... etc.
- [ ] Cleanup dock app icons, remove infrequently used ones

### Prepare development & work environment 

- [ ] Git clone this repo. Run the script `macos-install.sh`, it installs and configures the important tools for daily use and dev tools.
- Configure vscode
  - [ ] Install `sync settings` extension, then, download the settings. Will need the gist ID or github token. Ours is at [google doc](https://docs.google.com/document/d/1GGaX4JhbbBAzFxMvFRIvef7nMDdFpmi_ZGQ7Evnvbno/edit). (You can store it somewhere else, just remember not to check into version control since this is a credential)
  - [ ] Install the terminal beautify script
- [ ] `optional-cli.sh` and `optional-gui.sh` - you can cherry pick apps that you want to install.
- [ ] Open Google Drive Stream to configure for the first time.
- [ ] Clone active project repositories.
    - [ ] Aquire credentials, and place them in proper locations in repositories.


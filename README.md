# When System Performance Deteriorates...

https://www.cipher-it.co.uk/wp-content/uploads/2017/11/ITCrow.jpg ![image](https://user-images.githubusercontent.com/15918424/129460257-81cd6c8e-4bd5-48d0-b3a8-b14d9d6de879.png)

After many years of using all kinds of system, Windows, Mac included, the golden rule does not change.

The new recent Windows version are more self-sustainable? Mac OS does a great job at recycling garbage files that pile up over time? Performance does not degrade over time? All bull shit.

We all age, so do laptops and systems. How can we retain the blazing fast performance we enjoyed on day 1 - the day the laptop shipped and arrived?

How to stand at the unbeatable position for your entire lifespan? The only solution is just obvious: 

**Master Reinstalling OS!**

Don't rely on local data, everything cloud please (or external drive, if privacy is a concern), if you have any important data that you can't afford losing.


## To the rescue: Mac reinstall automation script

We try to address the tedious reinstallation work by providing scripts that quickly sets up your mac (M1) laptop for software development work.

See the section "How to use" below to see how to run the scripts.

### Issue: system occupying too much storage

If you just have reinstalled awhile ago and your problem is just storage, you might not need reinstall, you can try to clean up your storage first.

If you're using BigSur, there're useful tools in "About this mac > storage > manage..." to clean up your disk space.

Due to misterious reason (or just poorly developed app). Good way to analyze storage is to run `du -d 1 -x -c -g /`. [See this post](https://forums.macrumors.com/threads/system-taking-up-285-gb-of-space.2106785/page-3).

## Let's backup to prep for reinstall

Reminder:
- Personal files and data
    - Download, Desktop folder
- Voice memo
- Local git repository
    - Secrets that are git ignored.
    - Remaining git commits that aren't pushed to remote yet?
- App configs like
    - Visual Studio Code settings, keyboard map - back up by uplaoding the settings by `Setting Sync` extension

## Creating bootable USB

[See Apple Website for latest OS commands](https://support.apple.com/en-us/HT201372).

Steps

1. Download the OS from App Store. (Press GET) Then quit.

1. Run `sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume`. " MyVolume is the name of the USB flash drive or other volume you're using. If it has a different name, replace MyVolume accordingly." (Apple)

## Clean install from USB

This works for Mojave 10.14.6

Prequisite:

1. Make sure you allow [booting from external drive](https://appleinsider.com/articles/19/01/15/how-to-make-new-t2-secured-macs-boot-from-external-drives).
    - Hint: Long press "cmd + R", then choose "Startup Security Utility".
3. Make sure you turn off hardware protection.
4. Make sure you disable T2 chip security (for Macbook pro later than 2018) Please google for how to do this.

Steps:

1. Have your boot usb pluged in
1. Restart laptop, and **long press option**. (for M1 MBP: long press power button for [disk utility wipe](https://support.apple.com/en-us/HT212030) as well as [boot from USB](https://appleinsider.com/articles/21/01/03/how-to-boot-an-apple-silicon-mac-from-an-external-drive))
1. Will show booting options, choose USB (should be something like Mojave Install).
1. Will using USB to boot now. Then select disk utility. **Erase the main disk**.
1. Quit and go back to the main menu, now this time select Install Mojave.
1. Follow the steps.

[Credits](https://www.macrumors.com/how-to/clean-install-macos-10-14-mojave/).

Bonus

1. You can also consider using a SSD to setup the installer, [see this post](https://www.macworld.com/article/3284378/how-to-create-a-bootable-macos-mojave-installer-drive.html).

## How to use

Run automation scripts
- Install command line tools first
    - Try to git clone this repository, mac will prompt you then. Note: even if you download Xcode and run it the first time, brew installation still requires you to install the command line tool again. So better just let the prompt guide you.
- Run scripts to install necessary tools and apps:

```sh

sh ./macos-install.sh
cd beautify-terminal-10k
sh ./install-10k.sh

```

- Basic set up apps config
    - Visual Studio Code: install Sync Setting extension to restore settings and keyboard mappings. Can also manually input the gist and tokens - Ours is stored at [google doc](https://docs.google.com/document/d/1GGaX4JhbbBAzFxMvFRIvef7nMDdFpmi_ZGQ7Evnvbno/edit), please use your own!
    - Open Google Drive to turn it on

### Setup System preferences

- Configure for trackpad 
  - [ ] increase mouse pointer speed 
  - [ ] enable App Expose - use 4 fingers
  - [ ] drag in accessibility
- Configure keyboards
  - [ ] Add other languages needed
- Configure system bar icons "always show"
  - [ ] For volume, also enable "play feedback sound when volume is changed"
  - [ ] For bluetooth
- [ ] Internet account - enable for contact app, ... etc.
- [ ] Cleanup dock app icons, remove infrequently used ones
- [ ] User and Groups
  - [ ] Change computer network name


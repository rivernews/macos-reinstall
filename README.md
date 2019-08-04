## When System Performance Deteriorates...

### Issue: system occupying too much storage

Due to misterious reason (or just poorly developed app). Good way to analyze storage is to run `du -d 1 -x -c -g /`. [See this post](https://forums.macrumors.com/threads/system-taking-up-285-gb-of-space.2106785/page-3).

## So?

Then it's time to consider reinstalling OS.

Always painful thing to do. ...wait, is it? As long as we keep the most important things small, we should be able to go cloud, and then go light on local!

Things to back up
- Software app
    - Manually installed
    - GUI cask installed
    - Command line installed
- Software app configs
- Github repo: git push all changes
- Github repo: credentials that are excluded from version control
- User Data
    - Check /Downloads/
    - Check /Desktop/
    ...

## Creating bootable USB

[See Apple Website for latest OS commands](https://support.apple.com/en-us/HT201372).

Steps

1. Download the OS from App Store. (Press GET) Then quit.

1. Run `sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume`. " MyVolume is the name of the USB flash drive or other volume you're using. If it has a different name, replace MyVolume accordingly." (Apple)
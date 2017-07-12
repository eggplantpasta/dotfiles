# dotfiles
GNU Linux / Mac OS configuration

## Files

### sudoers.lecture

Cutesy message when doing sudo. Thanks to [https://github.com/brianclemens/dotfiles/blob/master/sudoers.lecture](brianclemens/dotfiles).
Save to /etc/sudoers.lecture as root. Check `man sudoers` for support of the following config.
```
Defaults        lecture_file = /etc/sudoers.lecture
```
It may be easier to test if you temporarily also add.
```
Defaults        lecture = always
```

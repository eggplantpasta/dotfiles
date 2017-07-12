# dotfiles
GNU Linux / Mac OS configuration

## Files

### sudoers.lecture

Cutesy message when doing sudo. Thanks to [brianclemens/dotfiles](https://github.com/brianclemens/dotfiles/blob/master/sudoers.lecture).
Save to /etc/sudoers.lecture as root. Check `man sudoers` for support of the following config.
```
Defaults        lecture_file = /etc/sudoers.lecture
```
It may be easier to test if you temporarily also add.
```
Defaults        lecture = always
```

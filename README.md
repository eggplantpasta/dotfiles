# dotfiles
GNU Linux / Mac OS configuration

## Files

### sudoers.lecture

Cutesy message when doing sudo. Thanks to [brianclemens/dotfiles](https://github.com/brianclemens/dotfiles/blob/master/sudoers.lecture).
Check `man sudoers` for support of `lecture_file`. Be careful of the hidden ESC characters before the colour definition sequences (use ^v ESC to enter in vi). Save to `/etc/sudoers.lecture` as root. Perform the following config using visudo.
```
Defaults        lecture_file = /etc/sudoers.lecture
```
It may be easier to test if you temporarily also add.
```
Defaults        lecture = always
```

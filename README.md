# dotfiles
GNU Linux / Mac OS configuration

## Files

### sudoers.lecture
Cutesy lecture message when doing sudo.
Check `man sudoers` for support of `lecture_file`. Be careful of the hidden ESC characters before the colour definition sequences (use ^v ESC to enter in vi). Save to `/etc/sudoers.lecture` as root. Perform the following config using visudo.
```
Defaults        lecture_file = /etc/sudoers.lecture
```
It may be easier to test if you temporarily also add.
```
Defaults        lecture = always
```

### svn-diffwrap.sh
Wrapper to use the graphical XCode FileMerge when calling `svn diff`.
Save in ~/bin and make it executable.
```bash
chmod +x ~/bin/svn-diffwrap.sh
```
Add this line to the [helpers] section of `~/.subversion/config`.
```
diff-cmd = [full path to homedir]/bin/svn-diffwrap.sh
```

## References
Ideas gleaned from these places.
* Cute sudoers.lecture from [brianclemens](https://github.com/brianclemens/dotfiles/blob/master/sudoers.lecture).
* A blog post by Craig Hockenberry [The Terminal](http://furbo.org/2014/09/03/the-terminal/).
* Solarized colours for vim [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized).
* Configure SVN diff to use FileMerge from [dtjm](https://gist.github.com/dtjm/523243).

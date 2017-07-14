# dotfiles
GNU Linux / Mac OS configuration

## Files

### .bashrc and .bash_profile
According to the `man bash`, .bash_profile is executed for login shells, while .bashrc is executed for interactive non-login shells. An exception to this is Mac OS X’s Terminal.app, which runs a login shell by default for each new terminal window, calling .bash_profile instead of .bashrc.

Normally you want to do the same things for both login and non-login shells - so put all of your code in .bashrc and call it from .bash_profile.

The differences between .bashrc and .bash_profile are explained on [Josh Staiger's blog](http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html).

### sudoers.lecture
Cutesy lecture message when doing sudo thanks to  [brianclemens](https://github.com/brianclemens/dotfiles/blob/master/sudoers.lecture).

Check `man sudoers` for support of `lecture_file`. Be careful of the hidden ESC characters before the colour definition sequences (use ^v ESC to enter in vi). Save to `/etc/sudoers.lecture` as root. Perform the following config using visudo.
```
Defaults        lecture_file = /etc/sudoers.lecture
```
It may be easier to test if you temporarily also add.
```
Defaults        lecture = always
```

### svn-diffwrap.sh
Wrapper to use a better diff tool when calling `svn diff`.

For Mac OS use the graphical XCode FileMerge (opendiff).
For the command line I prefer to use `git diff` wich colourises the normal diff output.
`vimdiff` gives a coloured side by side comparison if you are comfortable using Vim.

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
* A blog post by Craig Hockenberry [The Terminal](http://furbo.org/2014/09/03/the-terminal/).
* Solarized colours for vim [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized).
* Configure SVN diff to use FileMerge from [dtjm](https://gist.github.com/dtjm/523243).

# dotfiles
GNU Linux / Mac OS configuration.

More than just dotfiles. My personal preferences for the command line and the Mac.

## New Mac config

### Brew

Go to the [brew.sh](https://brew.sh) to set up homebrew.

From the FAQ:

How do I update my local packages?
First update the formulae and Homebrew itself:

```bash
brew update
```

You can now find out what is outdated with:

```bash
brew outdated
```

Upgrade everything with:

```bash
brew upgrade
```

Or upgrade a specific formula with:

```bash
brew upgrade <formula>
```

### Terminal

Set up a default terminal profile based on "Homebrew" with the font changed to "Menlo Regular 14 pt."

### Mail
Set the default mail app by opening Mail, going into preferences, and selecting the default mail app from the dropdown on the General tab.

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

### .gitconfig

Atlassian's [Sourcetree](https://www.sourcetreeapp.com) makes changes to the [difftool "sourcetree"] and [mergetool "sourcetree"] entries. In addition to this the following additions make `git difftool` from the command line use the XCode FileMerge utility. Here's a [cool article](https://laravel-news.com/resolving-git-conflicts?utm_medium=email&utm_campaign=The%20latest%20on%20Laravel%2055%20-%20%20169&utm_content=The%20latest%20on%20Laravel%2055%20-%20%20169+CID_6131fb910630e7f339f60ddfa08bb905&utm_source=email%20marketing&utm_term=Watch%20Now) and video tutorial about it.

```
[diff]
        tool = opendiff
[difftool]
        prompt = false
[difftool "opendiff"]
        cmd = /usr/bin/opendiff \"$LOCAL\" \"$REMOTE\" -merge \"$MERGED\" | cat
[mergetool "opendiff"]
        cmd = /usr/bin/opendiff \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
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

## Development

## Brew

## Composer

Download from [here](https://getcomposer.org/download/) and install [globally](https://getcomposer.org/doc/00-intro.md#globally).

Keep it updated by running `composer self-update` occasionally.

Keep any global tools updated by running `composer global update`.

## Atom

https://github.com/Glavin001/atom-beautify

https://github.com/andialbrecht/sqlparse

I think the syntax theme [Gloom](https://atom.io/themes/gloom) by hejrobin is pretty. I use it together with the UI theme [one dark](https://atom.io/themes/one-dark-atom) by jdsimcoe.

```
sudo pip install --upgrade pip
sudo pip install --upgrade sqlparse
```

## Visual Studio Code

Download from the [main website](https://code.visualstudio.com/).

Install Settings Sync and fetch the settings from GitHub.

Current Extensions:

* AWK v0.0.2
* beautify v1.4.7
* code-settings-sync v3.2.2
* gitlens v9.0.3
* markdown-all-in-one v1.8.0
* Material-theme v2.17.7
* php-cs-fixer v0.1.89
* php-debug v1.12.6
* php-intellisense v2.3.10
* php-pack v1.0.2
* plsql-language v1.6.5
* python v2018.11.0
* sort-lines v1.7.0
* vscode-apache v1.1.1
* vscode-docker v0.4.0
* vscode-hexdump v1.7.2
* vscode-markdownlint v0.22.0
* xml v2.3.2

## References

Ideas gleaned from these places.

* A blog post by Craig Hockenberry [The Terminal](http://furbo.org/2014/09/03/the-terminal/).
* Solarized colours for vim [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized).
* Configure SVN diff to use FileMerge from [dtjm](https://gist.github.com/dtjm/523243).
* Good example of a bash profile from [Nate Landau](https://natelandau.com/my-mac-osx-bash_profile/).
* Paul Redmonds zsh [article](https://laravel-news.com/maximize-terminal-productivity) and [dotfiles](https://github.com/paulredmond/dotfiles).

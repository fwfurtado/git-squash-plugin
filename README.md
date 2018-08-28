# git-squash-plugin

This is a simple extension for git to squash several commits until `commit id` or diff of commits between your `HEAD` and spcefic `branch`

## Instalation 
---
### Shortcut ways
1. Only run this long line in your shell
```
curl -o- -s https://raw.githubusercontent.com/feh-wilinando/git-squash-plugin/master/.installation.sh | sh
```

### Manual Instalation
1. Clone this repository shomewhere on your machine. This guide will assume `~/.git-extensions`
```
git clone https://github.com/feh-wilinando/git-squash-plugin.git ~/.git-extensions/git-squash-plugin
```
2. Install extension.
```
cd ~/.git-extensions/git-squash-plugin

make install 
```


# git-squash-plugin

This is a simple extension for git to squash several commits until `commit id` or diff of commits between your `HEAD` and spcefic `branch`

## Instalation 
---
### Shortcut ways
1. Only run this long line in your shell
```
curl -o- -s https://raw.githubusercontent.com/feh-wilinando/git-squash-plugin/master/.installation.sh | sh
```

### Usage

![git squash plugin](git-squash-plugin.gif)

## Plugins Shortcuts

These are the `shortcuts` available to work with plugin:

```
 gsq -d master or gsq -c {commit-id} -> to avoid use git squash
```

```
 gsqd master ->  to avoid use git squash -d master
```

```
 gsqc {commit-id} ->  to avoid use git squash -c commit-id
```

```
 gsqm ->  to avoid use git squash -d master
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


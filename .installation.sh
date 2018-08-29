#!/usr/bin/env sh


setup () {
	local plugin_path=$HOME/.git-extensions/git-squash-plugin

	pushd $(pwd) > /dev/null

	if [ ! -d $plugin_path ]; then
	   install $plugin_path
	else
       update $plugin_path
	fi

	popd > /dev/null
}


update() {
    cd $1
    make update
}

install() {

    mkdir -p $1 > /dev/null
	git clone https://github.com/feh-wilinando/git-squash-plugin.git $1
	make install
	declare -a files=(".bash_profile" ".bashrc" ".zshrc")

    for file in "${files[@]}"
	do
	    if [ -f $HOME/$file ]
	    then
	        echo "alias gsq='git squash'" >> $HOME/$file
	        echo "alias gsqd='git squash -d ' " >> $HOME/$file
	        echo "alias gsqc='git squash -c ' " >> $HOME/$file
	        echo "alias gsqm='git squash -d master '" >> $HOME/$file
	    fi
	done
}


setup;

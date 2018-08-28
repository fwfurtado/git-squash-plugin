#!/usr/bin/env sh


install () {
	local plugin_path=$HOME/.git-extensions/git-squash-plugin
	
	pushd $(pwd) > /dev/null
	
	git clone https://github.com/feh-wilinando/git-squash-plugin.git $plugin_path
	
	cd $plugin_path
	
	make install 

	popd > /dev/null
}

install;

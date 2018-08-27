#!/usr/bin/env sh


usage() {
	echo "NAME:"
	echo "\tgit-sqush - Squash several commits"

	echo "USAGE:"
	echo
	
	echo "\tgit squash <commit>"
	echo "\tgit squash --diff [<source-branch>] <target-branch>"

	echo "DESCRIPTION:"
	echo

	echo "\tIn the first form, squash all commits before the <commit>."
	echo "\tIn another hand, the second form compute diff between <source-branch> (if not specified use HEAD) and <target-branch> and squash it."
	echo

	echo "\tgit squash <commit>"
	echo "\t\tReset all changes till the <commit> to stage"
	echo

	echo "\tgit squash [<source-branch>] <target-branch>"
	echo "\t\tReset all changes between <source-branch> and <target-branch> to stage"
	echo "\t\tIf the <source-branch> isn't specified, used HEAD for comparison."
	echo

	echo "EAMPLE:"
	echo
	
	echo "\tgit squash HEAD~4"
	echo "\tgit squash 0987208108265812"
	echo "\tgit squash --diff feature release"
	echo "\tgit squash --diff release"
}

main(){
	if [ "$#" -lt 1 ]; then
		usage; exit 1
	fi
	

	local subcomand="$1"; shift

	echo $subcomand

	case $subcomand in
		"-h"|"--help")
			usage; exit 0
			;;
	esac
}

main "$@"
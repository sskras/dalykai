#! /bin/sh

space_01="
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
"

space_02="
 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
"

space_03()
{
	echo . . . .
}

space_04()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
}

space_05()
{
	echo . . . . . . . . . . . . . . . . .
}

space_06()
{
	echo . . . . . . . . . . . . . . . . .
}

space_07()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
}

space_08()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
}

space_09()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
}

space_10()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
}

space_11()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . .
}

space_12()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . . . . . . . . . . . .
}

space_13()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . . . . . . . . . . . .
}

space_14()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
}

space_15()
{
	echo . . . . . . . . . . . . . . . . .
}

space_16()
{
	echo . . . . . . . . . . . . . . . . . . . . .
}

space_17()
{
	echo . . . . . . . .
}

space_18()
{
	echo . . . . . . . . . . . . . . . . . . . . .
}

space_19()
{
	echo . . . . . . . . . . . . . . . . . . . . .
}

space_20()
{
	echo . . . . . . . . . . . . . . . . . .
}

space_21_is_a_longer_name()
{
	echo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
	echo . . . . . . . . . . . . . .
}

run_cmd()
{
	echo "===> running: $*"
	eval "$@" 
}

mkdir_p()
{
	#run_cmd "/bin/sh home-midipix-src-pkgsrc-work-bin-install.sh -d -o the-owner -g the-group $1"
	#run_cmd "/bin/sh home-midipix-src-pkgsrc-work-bin-install.sh -d -o the-owner -g the-group $2"
	run_cmd "/bin/bash home-midipix-src-pkgsrc-work-bin-install.sh -d -o the-owner -g the-group $1"
	run_cmd "/bin/bash home-midipix-src-pkgsrc-work-bin-install.sh -d -o the-owner -g the-group $2"
}

set space_XX

> home-midipix-src-pkgsrc-work-bin-install.sh

mkdir_p home-midipix-src-pkgsrc-work-sbin home-midipix-src-pkgsrc-work-share-mk

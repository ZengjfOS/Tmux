#!/bin/bash

sudo apt-get -y install xclip
sudo apt-get -y install libevent-dev
sudo apt-get -y install ncurses-dev

checkTmux=$(which tmux 2>&1 | grep bin)
if [ -z "${checkTmux}" ]; then
	git clone https://github.com/tmux/tmux.git
	cd tmux
	sh autogen.sh || exit 1
	./configure || exit 1
	make || exit 1
	sudo make install
	rm tmux -rf
	cd -
else
	echo "Your have installed Tmux at \"$checkTmux\""
fi

[ ! -e ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

SessionName=tmux
ConfigName=.tmux.conf

[ ! -e ~/${ConfigName} ] && ln -s `pwd`/${ConfigName} ~/${ConfigName}
cp -v .tmux ~/ -rf

tmux has-session -t ${SessionName} > /dev/null 2>&1 || tmux new -d -t ${SessionName}
tmux source-file ~/${ConfigName}

# tmux ls

tmux kill-session -t `tmux ls | grep ${SessionName} | cut -d: -f1`

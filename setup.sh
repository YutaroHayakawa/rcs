#このレポジトリのファイルをコピー
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc

#NeoBundleのための環境構築
if [-e ~/.vim/bundle/neobundle]; then
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle
else
    echo "~/.vim/bundle doesn't exists! I will make it!"
    mkdir -p ~/.vim/bundle &&
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle
fi

#vimカラースキームのための環境構築
if [-e ~/.vim/colors]; then
    cd ~/.vim/colors
    git clone https://github.com/tomasr/molokai.git
    cp molokai/colors/molokai.vim .
else
    echo "~/.vim/colors doesn't exists! I will make it!"
    mkdir -p ~/.vim/colors &&
    cd ~/.vim/colors &&
    git clone https://github.com/tomasr/molokai.git &&
    cp molokai/colors/molokai.vim .
fi

#zshrcのための環境構築
if [-e ~/.zshrc]; then
    git clone https://github.com/seebi/dircolors-solarized.git ~/dircolors-solarized &&
    ln -s ~/dircolors-solarized/dircolors.256dark ~/.dircolors &&
    source ~/.zshrc
else
    echo "~/.zshrc doesn't exists!"
fi


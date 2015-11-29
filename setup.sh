#! /bin/sh

set -u
declare BIN=/usr/local/bin
declare WORK=$HOME/work
declare ADDRESS=your-address@gmail.com

echo 'start'

# open $WORK/jdk-8u60-macosx-x64.dmg
# open $WORK/googlechrome.dmg
# open $WORK/ideaIC-14.1.4.dmg
# open $WORK/rudix-2015.10.20-0.pkg

# chsh -s /bin/zsh
# xcode-select --install
# git config --global user.name your-name
# git config --global user.email your-address@users.noreply.github.com
# git config --global push.default current
# git config --global core.editor 'vim -c "set fenc=utf-8"'

if [ -e $WORK ]; then
  :
else
  echo 'not found work directory'
  exit 0
fi

if [ -e $WORK/JANSI-MacOSX10.4 ]; then
  :
else
  echo 'unzip'
  (cd $WORK; unzip JANSI-MacOSX10.4.zip)
fi

if [ -e ~/Library/Keyboard\ Layouts ]; then
  :
else
  echo 'Keyboard Layouts'
  mkdir -p Library/Keyboard\ Layouts
fi

if [ -e ~/Library/Keyboard\ Layouts/JANSI.icns ]; then
  :
else
  echo 'mv icns'
  mv $WORK/JANSI-MacOSX10.4/JANSI.icns Library/Keyboard\ Layouts
fi

if [ -e ~/Library/Keyboard\ Layouts/JANSI.keylayout ]; then
  :
else
  echo 'mv keylayout'
  mv $WORK/JANSI-MacOSX10.4/JANSI.keylayout Library/Keyboard\ Layouts
fi

if [ -e ~/.ssh ]; then
  :
else
  echo 'ssh-keygen'
  ssh-keygen -t rsa -b 4096 -C $ADDRESS
fi

ps -ax | grep [s]sh-agent 1>/dev/null 2>/dev/null

if [ $? -eq 0 ]; then
  :
else
  echo 'ssh-agent'
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_rsa
fi

if [ -e $BIN ]; then
  :
else
  echo 'bin'
  sudo mkdir $BIN
fi

if [ -e $WORK/dotfiles ]; then
  :
else
  echo 'dotfiles'
  (cd $WORK; git clone git@github.com:t-mochizuki/dotfiles.git)
fi

if [ -e ~/.gemrc ]; then
  :
else
  echo '.gemrc'
  ln -s $WORK/dotfiles/.gemrc
fi

if [ -e ~/.zshrc ]; then
  :
else
  echo '.zshrc'
  ln -s $WORK/dotfiles/.zshrc
fi

if [ -e ~/.vimrc ]; then
  :
else
  echo '.vimrc'
  ln -s $WORK/dotfiles/.vimrc
fi

if [ -e ~/.vim/bundle ]; then
  :
else
  echo 'Vundle'
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ -e ~/sbt ]; then
  :
else
  echo 'sbt'
  (cd $WORK; tar zxvf sbt-0.13.9.tgz 1>/dev/null 2>/dev/null)
  mv $WORK/sbt ~
fi

if [ -e $BIN/sbt ]; then
  :
else
  sudo ln -s ~/sbt/bin/sbt $BIN
fi

if [ -e $WORK/ghc-7.10.2 ]; then
  :
else
  echo 'ghc'
  (cd $WORK; tar Jxvf ghc-7.10.2-x86_64-apple-darwin.tar.xz 1>/dev/null 2>/dev/null)
  mv $WORK/ghc-7.10.2 src
fi

if [ -e ~/ghc ]; then
  :
else
  echo 'ghc'
  (cd $WORK/ghc-7.10.2; ./configure --prefix=$HOME/ghc; make install)
fi

if [ -e $BIN/ghc ]; then
  :
else
  sudo ln -s ~/ghc/bin/ghc ~/ghc/bin/ghc-pkg ~/ghc/bin/ghci $BIN
fi

if [ -e ~/jekyll ]; then
  :
else
  echo 'jekyll'
  mkdir jekyll
  (cd jekyll; gem install --install-dir . jekyll)
fi

if [ -e $BIN/jekyll ]; then
  :
else
  sudo ln -s ~/jekyll/bin/jekyll $BIN
fi

if [ -e ~/.nvm ]; then
  :
else
  echo 'clone nvm'
  git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
fi

if [ -e $WORK/osx-terminal.app-colors-solarized ]; then
  :
else
  echo 'clone osx-terminal.app-colors-solarized'
  (cd $WORK; git clone https://github.com/tomislav/osx-terminal.app-colors-solarized)
fi

if [ -e $WORK/vim ]; then
  :
else
  echo 'clone vim'
  (cd $WORK; git clone https://github.com/vim/vim)
fi

if [ -e ~/vim ]; then
  :
else
  echo 'build vim'
  (cd $WORK/vim; ./configure \
    --disable-gui \
    --enable-pythoninterp=dynamic \
    --enable-rubyinterp=dynamic \
    --enable-cscope \
    --disable-netbeans \
    --enable-multibyte \
    --disable-xim \
    --disable-sysmouse \
    --with-features=normal \
    --without-x \
    --disable-xsmp \
    --prefix=$HOME/vim; \
    make; \
    make install)
fi

if [ -e $BIN/vim ]; then
  :
else
  echo 'vim'
  sudo ln -s ~/vim/bin/vim $BIN
fi

if [ -e ~/redis ]; then
  :
else
  echo 'redis'
  (cd $WORK; \
    curl http://download.redis.io/releases/redis-3.0.5.tar.gz -o redis-3.0.5.tar.gz; \
    tar zxf redis-3.0.5.tar.gz; \
    cd redis-3.0.5; \
    make; \
    make PREFIX=$HOME/redis install)
fi

echo 'end'


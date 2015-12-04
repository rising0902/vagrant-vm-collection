#!/usr/bin/evn bash

# setup git
if [ -z `which git` ]; then
    echo " [step 1] : git is installing..."
    sudo apt-get install -y git
else
    echo " [step 1] : git is already installed."
fi
# setup pyenv
if [ -z `which pyenv` ]; then
    echo " [step 2] : pyenv is installing..."
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    sudo apt-get install -y libreadline6-dev
    sudo apt-get install -y zlib1g
    sudo apt-get install -y zlib1g-dev
    sudo apt-get install -y bzip2
    sudo apt-get install -y libbz2-1.0 libbz2-dev
    sudo apt-get install -y sqlite3
    sudo apt-get install -y libsqlite3-0 libsqlite3-dev
    sudo apt-get install -y openssl 
    sudo apt-get install -y libssl-dev
    sudo apt-get install -y libssl1.0.0
    source ~/.bashrc
    pyenv install 2.7.10
    pyenv global 2.7.10
else
    echo " [step 2] : pyenv is already installed."
fi

pip install ansible

sudo apt-get install -y libssl1.0.0

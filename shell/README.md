# Sample

## oel7
```bash
cd
git clone https://github.com/steven-zhc/.dotfile.git
ln -s .dotfile/shell/core/.aliases-core ~/.aliases-core
ln -s .dotfile/shell/core/.myenv-core ~/.myenv-core 
ln -s .dotfile/shell/vm-oel7/.myenv ~/.myenv
ln -s .dotfile/shell/vm-oel7/.aliases ~/.aliases

cp ~/.bashrc ~/.bashrc.bak
rm ~/.bashrc
ln -s .dotfile/shell/vm-oel7/.bashrc ~/.bashrc

cp ~/.bash_profile ~/.bash_profile.bak
rm ~/.bash_profile
ln -s .dotfile/shell/vm-oel7/.bash_profile ~/.bash_profile
```

## oel8
```bash
cd
git clone https://github.com/steven-zhc/.dotfile.git
ln -s .dotfile/shell/core/.aliases-core ~/.aliases-core
ln -s .dotfile/shell/core/.myenv-core ~/.myenv-core 
ln -s .dotfile/shell/vm-oel8/.myenv ~/.myenv
ln -s .dotfile/shell/vm-oel8/.aliases ~/.aliases

cp ~/.bashrc ~/.bashrc.bak
rm ~/.bashrc
ln -s .dotfile/shell/vm-oel8/.bashrc ~/.bashrc

cp ~/.bash_profile ~/.bash_profile.bak
rm ~/.bash_profile
ln -s .dotfile/shell/vm-oel8/.bash_profile ~/.bash_profile
```
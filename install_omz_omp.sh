cd $HOME

if [ "$EUID" == 0 ]; then
    apt update -y
    apt install -y git zsh curl
else
    sudo apt update -y
    sudo apt install -y git zsh curl
fi

echo "\nInstall oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed 's/\(^plugins=([^)]*\)/\1 zsh-autosuggestions/' ~/.zshrc

echo "\nInstall oh-my-posh ..."
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v16.10.0/posh-linux-arm -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir -p ~/.poshthemes && cd ~/.poshthemes/
wget https://gist.githubusercontent.com/BbsonLin/36db0916c5a5a25445efece58f31b84d/raw/7e7b422ccda71858ed9124ec2600f284690fd0a2/bbsonlin-server.omp.json
echo 'eval "$(oh-my-posh init zsh --config ~/.poshthemes/bbsonlin-server.omp.json)"' >> ~/.zshrc

# Confirm that the script is running on the host
uname -a

# Install common packages
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -y -qq
sudo apt-get upgrade -y -qq
sudo apt-get install -y -qq golang neofetch zsh mosh byobu aria2

# Change timezone
sudo timedatectl set-timezone Asia/Seoul

# Install Python 3.10
sudo apt-get install -y -qq software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get install -y -qq python3.10-full python3.10-dev

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sudo chsh $USER -s /usr/bin/zsh

OH_MY_ZSH="/home/giung/.oh-my-zsh"
git clone https://github.com/zsh-users/zsh-autosuggestions         $OH_MY_ZSH/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $OH_MY_ZSH/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions             $OH_MY_ZSH/custom/plugins/zsh-completions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git   $OH_MY_ZSH/custom/themes/powerlevel10k

# Install Neovim
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim

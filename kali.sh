sudo su

tee -a /etc/apt/sources.list<<EOF
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free
deb http://http.kali.org/kali kali-rolling main non-free contrib
deb-src http://http.kali.org/kali kali-rolling main non-free contrib
deb http://kali.cs.nctu.edu.tw/kali kali-rolling main non-free contrib
deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main
deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x bullseye main
deb-src [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x bullseye main
deb [arch=amd64,arm64,armhf] http://packages.microsoft.com/repos/code stable main
EOF

apt-get update && sudo apt-get upgrade -y

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt-get install -y nodejs

sudo apt-get install gdebi

git config --global user.name "tech-shamp"
git config --global user.email shampytechnical@gmail.com

cd Downloads
git clone https://github.com/vinceliuice/WhiteSur-kde.git
cd WhiteSur-kde
./install.sh
cd ..
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh
cd ..
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
./install.sh
cd ..

sudo apt install snapd
sudo systemctl unmask snapd.service
sudo systemctl enable snapd.service
sudo systemctl start snapd.service
sudo snap install code --classic
sudo snap install code-server --edge

cd ~/Public
git clone https://github.com/tech-shamp/portfolio.git
git clone https://github.com/tech-shamp/amathyst.git
git clone https://github.com/tech-shamp/EducationTemplate
code .

cd ~

cd Donwloads
rm -rvf WhiteSur-kde WhiteSur-icon-theme WhiteSur-cursors

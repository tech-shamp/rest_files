sudo tee -a /etc/apt/sources.list<<EOF
deb http://kali.cs.nctu.edu.tw/kali kali-rolling main non-free contrib
deb http://http.kali.org/kali kali-rolling main contrib non-free
deb-src http://http.kali.org/kali kali-rolling main contrib non-free
EOF

sudo apt-get update && sudo apt-get upgrade -y

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

git config --global user.name "tech-shamp"
git config --global user.email shampytechnical@gmail.com

cd Downloads
git clone https://github.com/vinceliuice/WhiteSur-kde.git
cd WhiteSur-kde
./install.sh
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
./install.sh
./build.sh

cd ~/Public
git clone https://github.com/tech-shamp/nooreazal.git
git clone https://github.com/tech-shamp/portfolio.git
git clone https://github.com/tech-shamp/demo-example.git
git clone https://github.com/tech-shamp/amathyst.git
git clone https://github.com/tech-shamp/practice.git

cd ~
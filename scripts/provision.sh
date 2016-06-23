sudo apt-get -y update
sudo apt-get -y install git bash


rm -rf taiga-scripts
git clone https://github.com/mes-2016-1/taiga-scripts.git
cd taiga-scripts
git checkout colab_taiga

mkdir -p ~/.setup

cat > ~/.setup/data.sh <<EOF
scheme="http"
hostname="localhost:8000"
EOF

bash setup-server.sh

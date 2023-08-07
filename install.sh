version=$(git -c 'versionsort.suffic=-' ls-remote --tags https://github.com/coder/code-server | grep -v 'rc.' | tail -n 1 | awk -F 'v' '{print $NF}')
url="https://github.com/coder/code-server/releases/download/v$version/code-server_$version""_amd64.deb"
wget $url
sudo apt install -y "./code-server_$version""_amd64.deb"
rm "./code-server_$version""_amd64.deb"

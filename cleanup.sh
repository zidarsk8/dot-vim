rm -rf bundle
git checkout .
git submodule update --init --recursive
echo "copy .vimrc ../"
cp .vimrc ../

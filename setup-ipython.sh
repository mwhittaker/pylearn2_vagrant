# ipython
BASE_DIR=/home/vagrant
IPYTHON_TARGZ="$BASE_DIR"/ipython-1.1.0.tar.gz
IPYTHON_DIR="$(basename "$IPYTHON_TARGZ" .tar.gz)"
IPYTHON_URL='https://pypi.python.org/packages/source/i/ipython/ipython-1.1.0.tar.gz#md5=70d69c78122923879232567ac3c47cef'

cd
if test ! -f "$IPYTHON_TARGZ"; then
    wget "$IPYTHON_URL" -O "$IPYTHON_TARGZ"
fi
cd "$BASE_DIR" && tar -xzvf "$IPYTHON_TARGZ"
cd "$BASE_DIR/$IPYTHON_DIR"
python setup.py build
python setup.py install

# ipython
pip install pyzmq
pip install jinja2
pip install tornado

wget 'https://pypi.python.org/packages/source/i/ipython/ipython-1.1.0.tar.gz#md5=70d69c78122923879232567ac3c47cef'
tar -xzvf ipython-1.1.0.tar.gz
cd ipython-1.1.0
./setup.py build
./setup.py install

# MNIST hand written digits
MNIST_DIR=/home/vagrant/data/mnist
ZIP_URL_1=http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
ZIP_URL_2=http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
ZIP_1="$(basename "$ZIP_URL_1" .gz)"
ZIP_2="$(basename "$ZIP_URL_2" .gz)"

test ! -d "$MNIST_DIR" && mkdir "$MNIST_DIR"
wget "$ZIP_URL_1" -P "$MNIST_DIR"
wget "$ZIP_URL_2" -P "$MNIST_DIR"
test ! -f "$MNIST_DIR/$ZIP_1" && sudo gzip -d "$MNIST_DIR/$ZIP_1"
test ! -f "$MNIST_DIR/$ZIP_2" && sudo gzip -d "$MNIST_DIR/$ZIP_2"
true

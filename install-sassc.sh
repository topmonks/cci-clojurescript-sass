SASS_VERSION=3.4.7

set -e

export SASS_BUILD_DIR=$HOME/src/github.com/sass
mkdir -p $SASS_BUILD_DIR
cd $SASS_BUILD_DIR

git clone --recursive https://github.com/sass/libsass.git -b ${SASS_VERSION}
git clone https://github.com/sass/sassc.git -b ${SASS_VERSION}

cd sassc
SASS_LIBSASS_PATH=$SASS_BUILD_DIR/libsass make

cp $SASS_BUILD_DIR/sassc/bin/sassc /usr/local/bin/sassc

rm -rf $SASS_BUILD_DIR

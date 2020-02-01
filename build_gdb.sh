#!/bin/bash
export PATH=$PATH:/usr/local/arm/arm-2009q3/bin
make distclean
CUR_DIR=`pwd`
SRC=${CUR_DIR}
INSTALL_PREFIX=${CUR_DIR}/arm-gdb
CROSS_PREFIX=arm-none-linux-gnueabi
ARM_NCURSE_PREFIX=${CUR_DIR}/../ncurses-6.1/arm-ncurse
rm -rf ${INSTALL_PREFIX}
mkdir -p ${INSTALL_PREFIX}

cd ${SRC}

./configure  \
	--host=${CROSS_PREFIX} \
	--prefix=${INSTALL_PREFIX} \
#	--enable-shared \
        --disable-werror \
        --without-uiout \
        --enable-tui --disable-gdbtk --without-x \
        --without-included-gettext \
        --enable-threads \
        --with-expat \
        --without-python \
        --disable-binutils \
        --disable-ld \
        --disable-gas \
        --disable-sim


make -j4 && make -j4 install

cd -


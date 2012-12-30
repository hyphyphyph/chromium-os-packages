PACKAGE_NAME=python2
PACKAGE_URL=https://www.archlinux.org/packages/extra/i686/python2/download/

cd /usr/local/tmp
mkdir $PACKAGE_NAME
cd    $PACKAGE_NAME

wget -c --trust-server-names $PACKAGE_URL
tar xf *.tar.xz

cd usr
tar cf $PACKAGE_NAME.tar ./*
tar xf $PACKAGE_NAME.tar -C /usr/local
cd ..

mount -o rw,remount /
ln -sfv /usr/local/bin/python2.7 /usr/bin/python
ln -sfv /usr/local/bin/python2.7 /usr/bin/python2
mount -o ro,remount /
ln -sfv /usr/local/bin/python2.7 /usr/local/bin/python
ln -sfv /usr/local/bin/python2.7 /usr/local/bin/python2
cd ..
rm -rf $PACKAGE_NAME

PACKAGE_NAME=git
PACKAGE_URL=https://www.archlinux.org/packages/extra/i686/git/download/

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
ln -sfv /usr/local/share/git-core/ /usr/share/git-core
mount -o ro,remount /

cd ..
rm -rf $PACKAGE_NAME

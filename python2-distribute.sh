PACKAGE_NAME=python2-distribute
PACKAGE_URL=https://www.archlinux.org/packages/extra/any/python2-distribute/download/

cd /usr/local/tmp
mkdir $PACKAGE_NAME
cd    $PACKAGE_NAME

wget -c --trust-server-names $PACKAGE_URL
tar xf *.tar.xz

cd usr
tar cf $PACKAGE_NAME.tar ./*
tar xf $PACKAGE_NAME.tar -C /usr/local
cd ..

mv /usr/local/bin/easy_install /usr/local/bin/easy_install.default
ln -sfv /usr/local/bin/easy_install-2.7 /usr/local/bin/easy_install
cd ..
rm -rf $PACKAGE_NAME

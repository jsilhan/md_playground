#!/bin/bash

set -e

target=/home/jsilhan/Projects/rmps/repo
rm -fr $target
mkdir -p $target

rpmbuild -ba A-fake_lamp-lorem-nodb.spec
rpmbuild -ba A-fake_lamp-lorem-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_nodb-1.noarch.rpm $target

rpmbuild -ba C-fake_lamp-lorem-nodb.spec
rpmbuild -ba C-fake_lamp-lorem-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_default-2.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_default-2.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_nodb-2.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_nodb-2.noarch.rpm $target

rpmbuild -ba E-fake_lamp-lorem-nodb.spec
rpmbuild -ba E-fake_lamp-lorem-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_default-3.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_default-3.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_nodb-3.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_nodb-3.noarch.rpm $target

rpmbuild -ba B-fake_lamp-ipsum-nodb.spec
rpmbuild -ba B-fake_lamp-ipsum-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_nodb-1.noarch.rpm $target

rpmbuild -ba D-fake_lamp-ipsum-nodb.spec
rpmbuild -ba D-fake_lamp-ipsum-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_default-2.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_default-2.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_nodb-2.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_nodb-2.noarch.rpm $target

rpmbuild -ba G-fake_lamp-ipsum-nodb.spec
rpmbuild -ba G-fake_lamp-ipsum-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_default-3.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_default-3.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_nodb-3.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_nodb-3.noarch.rpm $target

rpmbuild -ba F-fake_lamp-dolor-nodb.spec
rpmbuild -ba F-fake_lamp-dolor-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-dolor_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-dolor_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-dolor_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-dolor_nodb-1.noarch.rpm $target

rpmbuild -ba H-fake_lamp-dolor-nodb.spec
rpmbuild -ba H-fake_lamp-dolor-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-dolor_default-2.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-dolor_default-2.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-dolor_nodb-2.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-dolor_nodb-2.noarch.rpm $target

createrepo_c $target
scp -i ~/.ssh/id_rsa -r $target jsilhan@fedorapeople.org:/home/fedora/jsilhan/public_html

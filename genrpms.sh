#!/bin/bash

set -e

target=/home/jsilhan/Projects/rmps/repo
rpmbuild -ba fake_lamp-lorem-nodb.spec
rpmbuild -ba fake_lamp-lorem-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_nodb-1.noarch.rpm $target

rpmbuild -ba fake_lamp-ipsum-nodb.spec
rpmbuild -ba fake_lamp-ipsum-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-ipsum_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-ipsum_nodb-1.noarch.rpm $target

rpmbuild -ba fake_lamp-dolor-nodb.spec
rpmbuild -ba fake_lamp-dolor-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-dolor_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-dolor_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-dolor_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-dolor_nodb-1.noarch.rpm $target

createrepo_c $target

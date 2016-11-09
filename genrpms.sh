#!/bin/bash 

target=/home/jsilhan/Projects/rmps/repo
rpmbuild -ba fake_lamp-lorem-nodb.spec
rpmbuild -ba fake_lamp-lorem-default.spec
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_default-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_default-1.noarch.rpm $target
mv /home/jsilhan/rpmbuild/SRPMS/fake_lamp-lorem_nodb-1.src.rpm $target
mv /home/jsilhan/rpmbuild/RPMS/noarch/fake_lamp-lorem_nodb-1.noarch.rpm $target
createrepo_c $target

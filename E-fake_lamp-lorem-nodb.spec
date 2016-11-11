%global stream lorem
%global profile nodb

Name:      fake_lamp
Version:   %{stream}_%{profile}
Release:   3
Summary:   Fake LAMP testing module
License:   GPLv2+
BuildArch: noarch

%global module_tag %{name}_%{stream}_%{release}

# tags from module_md.yaml
Provides: md.stream = %{stream}
Provides: md.profile = %{profile}
Provides: md.api = fake-httpd
Provides: md.api = fake-mariadb
Provides: md.api = fake-php

# from module_md.yaml, data/profiles/<profile>/rpms
Requires: fake-httpd = 2.2-2.%{module_tag}
Requires: fake-php = 6.0-1.%{module_tag}


# TAGS not yet in module_md.yaml
# better API support specification / md.api replacement?
Provides: md.support_cli(/usr/bin/php) = 2
Provides: md.support_api(/usr/lib64/php-zts/) = 2
Provides: md.support_api(/usr/lib64/php/) = 1
# information about release cycle and supportability?
Provides: md.support_till = 2018.07.01
Provides: md.release_cycle_months = 48


%description
%{summary}

%files

%global stream dolor
%global profile default

Name:      fake_lamp
Version:   %{stream}_%{profile}
Release:   1
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
Requires: fake-httpd = 2.4-1.%{module_tag}
Requires: fake-php = 6.3-1.%{module_tag}
Requires: fake-mariadb = 5.6.1-1.%{module_tag}


# TAGS not yet in module_md.yaml
# better API support specification / md.api replacement?
Provides: md.support_cli(/usr/bin/php) = 2
Provides: md.support_api(/usr/lib64/php-zts/) = 1
Provides: md.support_api(/usr/lib64/php/) = 1
# information about release cycle and supportability?
Provides: md.support_till = 2017.07.01
Provides: md.release_cycle_months = 12


%description
%{summary}

%files

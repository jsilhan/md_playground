%global stream lorem
%global profile default

Name:      fake_lamp
Version:   %{stream}_%{profile}
Release:   1
Summary:   Fake LAMP testing module
License:   GPLv2+
BuildArch: noarch

%global module_tag %{name}_%{stream}_%{release}
Provides: md.stream = %{stream}
Provides: /%{name}

Provides: md.profile = %{profile}
Provides: md.api = fake-httpd
Provides: md.api = fake-mariadb
Provides: md.api = fake-php

Requires: fake-httpd = 2.2-1.%{module_tag}
Requires: fake-php = 6.0-1.%{module_tag}
Requires: fake-mariadb = 5.6.1-1.%{module_tag}

%description
%{summary}

%files

BASE="https://github.com/tukiyo/php5.1-enable-zend-multibyte.el5/releases/download/source"

for i in  \
 php-5.1.6-45.x86_64.rpm \
 php-bcmath-5.1.6-45.x86_64.rpm \
 php-cli-5.1.6-45.x86_64.rpm \
 php-common-5.1.6-45.x86_64.rpm \
 php-dba-5.1.6-45.x86_64.rpm \
 php-devel-5.1.6-45.x86_64.rpm \
 php-gd-5.1.6-45.x86_64.rpm \
 php-imap-5.1.6-45.x86_64.rpm \
 php-ldap-5.1.6-45.x86_64.rpm \
 php-mbstring-5.1.6-45.x86_64.rpm \
 php-mysql-5.1.6-45.x86_64.rpm \
 php-ncurses-5.1.6-45.x86_64.rpm \
 php-odbc-5.1.6-45.x86_64.rpm \
 php-pdo-5.1.6-45.x86_64.rpm \
 php-pgsql-5.1.6-45.x86_64.rpm \
 php-snmp-5.1.6-45.x86_64.rpm \
 php-soap-5.1.6-45.x86_64.rpm \
 php-xml-5.1.6-45.x86_64.rpm \
 php-xmlrpc-5.1.6-45.x86_64.rpm
do
 wget "$BASE"/"$i"
done

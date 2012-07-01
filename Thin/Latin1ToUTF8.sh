#!/bin/sh

## sudo apt-get install recode

find . -name "*.ads" -exec recode latin1..UTF-8 {} \;

find . -name "*.adb" -exec recode latin1..UTF-8 {} \;

find . -name "*.txt" -exec recode latin1..UTF-8 {} \;

#find $my_base_dir -name "*.php" -o -name "*.html" -exec sh -c "( \
#   iconv -t ISO88592 -f UTF8 {} -o {}.iconv ; \
#   mv {}.iconv {} ; \
#)" \;


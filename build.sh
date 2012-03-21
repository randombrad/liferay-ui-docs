#!/bin/bash

if test $# -eq 0 ; then
   file_list=$(ls ./en/*.md)
else
   file_list=$@
fi

pandoc --template=html.template --toc -r markdown -5 $file_list > index.html

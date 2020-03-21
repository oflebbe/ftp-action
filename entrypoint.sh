#!/bin/sh -l

if [ "x$INPUT_EXCLUDEDIR" != x ] ; then
   EXCLUDE="-X $INPUT_EXCLUDEDIR"
fi

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror -v --delete --reverse --continue --dereference -X '.git' $EXCLUDE $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"

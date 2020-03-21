#!/bin/sh -l

if [ "x$INPUT_EXCLUDEDIR" != x ] ; then
   EXCLUDE="-x $INPUT_EXCLUDEDIR"
fi

lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror -v --delete --reverse --ignore-time --dereference -x ^\.git/$  $EXCLUDE $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"

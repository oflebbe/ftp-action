#!/bin/sh -l

if [ "x$INPUT_EXCLUDEDIR" != x ] ; then
   EXCLUDE="-x $INPUT_EXCLUDEDIR"
fi
echo x$INPUT_HOST x$EXCLUDE xxxx
lftp $INPUT_HOST -u $INPUT_USER,$INPUT_PASSWORD -e "set ssl:verify-certificate false; mirror --reverse --continue --dereference -x '.git' $EXCLUDE $INPUT_LOCALDIR $INPUT_REMOTEDIR; quit"

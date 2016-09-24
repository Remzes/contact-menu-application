#!/bin/bash
echo -n "Read your username: "
read userName
grep $userName /etc/passwd > locationOfInfo
if [ -z "$(<locationOfInfo)" ]
then
    echo "Nonexistent user"
else
    awk '
      BEGIN {
      { FS = ":" }
      { print "UID\tGID\tHome Directory" }
      }
      { print $3"\t"$4"\t"$6"\t" } ' locationOfInfo
fi
rm locationOfInfo


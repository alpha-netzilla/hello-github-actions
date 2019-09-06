#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"

grep -r -E "[\"\'][0-9a-zA-Z\-]{40,}[\"\']" ./*.gs > /dev/null

if [ $? -eq 0 ]; then
	echo "Include invalie characters"
  exit 1
else
  echo "Successful completion"
  exit 0
fi


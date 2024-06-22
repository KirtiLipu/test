#!/bin/bash

ARGS=2
E_WRONGARGS=85

if [ $# -ne "$ARGS" ] # Check for proper number of command-line args.
then
   echo "Usage: `basename $0` filename column-number"
   exit $E_WRONGARGS
fi

filename=$1
column_number=$2

# Begin awk script.
# -----------------------------
awk '

{ total += $'"${column_number}"'
}
END {
     print total
}     

' "$filename"
# -----------------------------
# End awk script.

exit 0

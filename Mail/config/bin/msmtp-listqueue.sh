#!/usr/bin/env bash

QUEUEDIR=$HOME/Mail/.msmtpqueue

for i in $QUEUEDIR/*.mail; do
	egrep -s --colour -h '(^From:|^To:|^Subject:)' "$i" || echo "No mail in queue";
	echo " "
done

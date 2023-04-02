#!/bin/bash

case $(~/Scripts/polybar/pipeline.sh $1 | grep -oh -E "(inProgress|succeeded|failed|stopped|notStarted)" | head -n 1) in
	inProgress) echo -n "北 ";;
	succeeded) echo -n " ";;
	failed) echo -n " ";;
	stopped) echo -n " ";;
	notStarted) echo -n " ";;
	*) echo -n " ";;
esac

echo "($1)"

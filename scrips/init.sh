#!/bin/bash

# rename to project specific values
NAME="ldas"
CONST="ldas"
STRUCT="ldas"
FN="ldas"

# will be replaced
ldas_NAME="ldas"
ldas_STRUCT="ldas"
ldas_CONST="ldas"
ldas_FN="ldas"

function replace() {
	echo "Replacing $1 with $2"
	find ./ -type f -name '*.c' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.h' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.md' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.lua' -exec sed -i "s/$1/$2/g" {} \;
	find ./ -type f -name '*.sh' -exec sed -i "s/$1/$2/g" {} \;
	find ./doc/ -type f -name '*' -exec sed -i "s/$1/$2/g" {} \;
}

replace $ldas_NAME $NAME
replace $ldas_CONST $CONST
replace $ldas_STRUCT $STRUCT
replace $ldas_FN $FN

mv "include/$ldas_NAME.h" "include/$NAME.h"
mv "src/$ldas_NAME.c" "src/$NAME.c"
mv "doc/$ldas_NAME" "doc/$NAME" 

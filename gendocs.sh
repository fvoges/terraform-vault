#!/bin/bash

DIRS="configurations/* modules/*"

for DIR in $DIRS
do

  test -d $DIR || continue

  terraform-docs markdown --output-mode replace --output-file REFERENCE.md $DIR
done

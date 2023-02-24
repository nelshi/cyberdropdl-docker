#!/bin/sh

find . -name "*.part" | xargs rm 

$CUSTOMARGS

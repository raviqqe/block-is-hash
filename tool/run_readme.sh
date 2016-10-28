#!/bin/sh

cat $1 | sed -z 's/.*Code.*```.*\(require.*\)```.*Output.*/\1/' | ruby

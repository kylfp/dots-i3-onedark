#!/bin/sh

sensors | grep 'junc' | awk '{print substr($2, length($2)-5)}'

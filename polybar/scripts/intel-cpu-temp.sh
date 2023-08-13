#!/bin/sh

sensors | grep 'Pack' | awk '{print substr($4, length($4)-5)}'

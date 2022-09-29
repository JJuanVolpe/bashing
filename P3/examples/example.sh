#!/usr/bin/awk -f
BEGIN {
    print "parámetros:"
    for (i = 1; i < ARGC; i++)
        print " " i ": " ARGV[i]

}
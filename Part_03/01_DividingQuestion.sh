#!/bin/bash


# ---------------------------------------------------------------- #


# write a script to print numbers divided by 3 and 5 but not by 15 ?

for i in {1..30}
do
    if (( ( i % 3 == 0 || i % 5 == 0 ) && ( i % 15 != 0 ) ))
    then
        echo "Number : $i"
    fi
done


# ---------------------------------------------------------------- #


# write a script to print the letter S in the word mississippi ?

x=mississippi
grep -o "s" <<< "$x" | wc -l

# COUNT CHARACTER OCCURRENCES IN A STRING

# Explanation:
# x=mississippi         -> Assigns the string "mississippi" to variable x
# <<< "$x"              -> Sends the value of x as input to the grep command
# grep -o "s"           -> Finds all occurrences of the letter "s" and prints each on a new line
# | wc -l               -> Counts the number of lines (i.e., the number of matches)

# Output:
# 4


# --------------------------------------------------------------- #


# TRACEROUTE COMMAND IN BASH

# Command:
# traceroute <hostname or IP>

# Example:
# traceroute google.com

# Explanation:
# The traceroute command shows the complete path that packets take
# to reach a destination (like a website or server) from your system.
# It lists all the intermediate routers (called hops) along the route
# and the time it takes for packets to reach each hop.

# Common Options:
# traceroute -n      -> Shows only IP addresses (no DNS lookups)
# traceroute -w 2    -> Sets timeout (in seconds) for each reply
# traceroute -m 20   -> Sets maximum number of hops to trace

# Output Example:
# 1  192.168.1.1   2.345 ms  2.210 ms  2.187 ms
# 2  10.0.0.1      10.542 ms  10.433 ms  10.422 ms
# 3  142.250.68.78 25.123 ms  24.998 ms  25.001 ms

# Meaning:
# Each line represents a router (hop).
# The numbers (in ms) show the round-trip time for each packet.

# Use Case:
# Helps diagnose network latency, routing issues, or connection delays.

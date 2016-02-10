import sys

args = sys.argv[1:]

string_of_initials = []

for x in args:
    string_of_initials.append(x[0])

print "".join(string_of_initials)

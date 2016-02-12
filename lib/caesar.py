import sys
import string
import pdb

def caesar(input_text, shift):
    alphabet = string.ascii_lowercase
    shifted_alphabet = alphabet[shift:] + alphabet[:shift]
    table = string.maketrans(alphabet, shifted_alphabet)
    print input_text.translate(table)


shift_key = sys.argv[1]
input_string = sys.argv[1:]

for x in input_string:
    caesar(x, int(shift_key))


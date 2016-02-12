import sys
import string
import pdb

def caesar(input_text, shift):
    alphabet = string.ascii_lowercase
    shifted_alphabet = alphabet[shift:] + alphabet[:shift]
    pdb.set_trace()
    table = string.maketrans(alphabet, shifted_alphabet)
    final = input_text.translate(table)
    print final

shift_key = sys.argv[1]
input_string = sys.argv[1:]

for x in input_string:
    caesar(x, int(shift_key))


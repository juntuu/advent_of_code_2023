#n

# Duplicate the input twice, so each line will have at least two digits and
# both parts will have own copy to work with (separated by a space).
s/.*/&& &&/

# Part 1
{
	# Find the digits
	s/[^1-9]*\([1-9]\).*\([1-9]\).* / \1\2 /
}

# Part 2
{
	# Decode spelled out digits
	s/one/o1e/g
	s/two/t2o/g
	s/three/t3e/g
	s/four/f4r/g
	s/five/f5e/g
	s/six/s6x/g
	s/seven/s7n/g
	s/eight/e8t/g
	s/nine/n9e/g

	# Find the digits
	s/\(.*\) [^1-9]*\([1-9]\).*\([1-9]\).*/\1 \2\3/
}

# Encode digits in unary (X counts in tens, keeping the hold space more
# compact and the runtime faster)
s/ 1/ X/g
s/ 2/ XX/g
s/ 3/ XXX/g
s/ 4/ XXXX/g
s/ 5/ XXXXX/g
s/ 6/ XXXXXX/g
s/ 7/ XXXXXXX/g
s/ 8/ XXXXXXXX/g
s/ 9/ XXXXXXXXX/g
s/1/I/g
s/2/II/g
s/3/III/g
s/4/IIII/g
s/5/IIIII/g
s/6/IIIIII/g
s/7/IIIIIII/g
s/8/IIIIIIII/g
s/9/IIIIIIIII/g

# Add the current line's result to the accumulator in hold space. In unary
# addition is simply concatenation.
G; s/ *\([IX]* [IX]*\)\n\([IX]*\) *\([IX]*\)/\2\1\3/; h

# At the end, decode the unary back to base 10.
$ {
	s/ *$/ /
	s/X/IIIIIIIIII/g
	:loop
	s/IIIIIIIIII/X/g
	s/X\([0-9]* \)/X0\1/g
	s/IIIIIIIII/9/g
	s/IIIIIIII/8/g
	s/IIIIIII/7/g
	s/IIIIII/6/g
	s/IIIII/5/g
	s/IIII/4/g
	s/III/3/g
	s/II/2/g
	s/I/1/g
	s/X/I/g
	t loop
	s/ *$//
	s/ /\n/p
}

#no default output, please!

# Set up hold space for card counting
1 { x; s/^/,:/; x; }

# Little cleanup
s/Card.*:/:/
s/$/ /

# Count current card and setup cursor for win tracking
{ x; s/\( *\)\([JK]*\) *,/|,\2J /; x; }

b check
:win

# Count won cards
{ x; s/\([JK]*\) *|\(.*\),\([JK]*\)/|\3\1 \2,\3/; x; }

:check
# Clear jump flag
t check
# Check wins and increment the matching count
s/^: *\([0-9][0-9]*\) \(.*|.*\) \1 /I: \1 \2 /
s/^\(II*\): *\([0-9][0-9]*\) \(.*|.*\) \2 /\1\1: \2 \3 /
t win
# No luck, just remove the number
s/: *[1-9][0-9]* /: /
t check

# Add line's points to the total
s/ *:.*//; H

# Clear the win cursor and compact the hold space
{
	x
	s/|/ /
	s/\n//
	s/IIIIIIIIII/X/g
	s/JJJJJJJJJJ/K/g
	s/\(JJ*\)\(KK*\)/\2\1/g
	x
}

$ {
	# Restore the accumulators from the hold space
	# and add the part 2 partial sums
	g
	s/[ ,\n]//g
	s/\(.*\):\(.*\)/\2\n\1\n/

	# Unpack the numbers
	s/J/I/g
	s/K/X/g
	s/X/IIIIIIIIII/g

	# Decode the unary back to base 10.
	:loop
	s/IIIIIIIIII/X/g
	s/X\([0-9]*\n\)/X0\1/g
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

	# Profit
	p
}

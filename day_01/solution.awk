#!/usr/bin/awk -f

function O(h){return""==h?h:O(substr(h,2))substr(h,1,1)}
function N(o){return E(O($0),o)O((n?10-b:b)E($0,O(o))b)}
function E(l,f){l=substr(l,match(l,f"|[0-9]"),n=RLENGTH)
b=--n?int(1.2+index(f,l)/5):l}END{print A"\n"B}{A+=N(RS)
B+=N(O("one|two|three|four|five|six|seven|eight|nine"))}

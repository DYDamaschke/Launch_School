=begin
Line 1 - action: method call(map); object: outer array; s/e: none; return: new array[1, 3]; return used: no, but shown.
line 1/4 - action: block execution; object: each sub array; s/e: none; return: arr.first; ret used: yes, by map for transformation
line 2 - action: method call(first); object: each sub array; s/e: none; return: subarray[0]; return used: yes, by puts
line 2 - action: method call(puts); object: arr.first; s/e: prints int; return: nil; return used: no
line 3 - action: method call(first); object: sub array; s/e: none; return: subarray[0]; return used: yes, determines block value 
=end
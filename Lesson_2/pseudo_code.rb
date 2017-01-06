=begin 

Sum of two integers:

Pseudo:

Given two integers.

  -Add the first integer to the second integer.
  -Return the sum of the two. 

  ================================
Formal Pseudo:

START

SET num_sum = first_integer + second_integer

PRINT num_sum

END

  ================================

Array of Strings:

Pseudo:

Given an array of strings.

  -iterate through the array one by one.
    -save the first string and continue to the next.
    -Add the next string to the saved string and move to the next.
  -return the saved value.

  =================================

  Formal:

  Given an Array of strings

  START

  SET iterator = 1
  SET saved_string = value of first string in array.

    WHILE iterator < length of array
      SET saved_string = saved_string + string at array "iterator"

      iterator = iterator + 1

    PRINT saved_string

  END

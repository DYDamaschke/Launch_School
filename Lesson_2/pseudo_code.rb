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

  ==================================

  Array of integers:

  Pseudo:

  Given an array of integers
    
    -Create empty array, new_array
    -iterate over the array
      -if the iterator is even
        -add to new_array
      -otherwise
        -move to the next integer

    -return new array

  ===================================

  Formal:

  Given an array of integers called numbers

  START

  SET new_array = []
  SET iterator = 0

  WHILE iterator < length of numbers
    IF iterator is even
      new_array << integer at space iterator
    ELSE
      move to next integer
    iterator = iterator + 1

  PRINT new_array

  END

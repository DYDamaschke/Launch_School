words = ["laboratory", "experiment", "Pan's Labyrinth", "elaborate", "polar bear"]

words.each do |word|
  if /lab/.match(word) || /Lab/.match(word)
    puts word
  end
end
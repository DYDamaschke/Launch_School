flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

b = flintstones.each_with_object({}) do |name, memo|
  memo[name] = flintstones.index(name)
end

p b
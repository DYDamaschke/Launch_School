family = { uncles: ["bob", "joe", "Steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
         }

immediate_family = family.select do |x,i| 
  x == :sisters || x == :brothers 
end

arr = immediate_family.values.flatten

p arr
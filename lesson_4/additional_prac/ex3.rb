ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

younger = ages.select { |name, age| age < 100 }

p younger


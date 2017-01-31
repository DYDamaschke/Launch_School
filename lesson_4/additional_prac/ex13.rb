def uuid1
  characters = []
  (1..9).each { |value| characters << value.to_s }
  ('a'..'f').each { |value| characters << value }
  p characters
  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, ind|
    section.times { uuid += characters.sample.to_s }
    uuid += "-" if ind < sections.length - 1
  end
  
  uuid
end
  
p id = uuid1
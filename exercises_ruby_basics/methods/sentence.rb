def pick_name(name_list)
  name_list.sample
end

def pick_activity(activity_list)
  activity_list.sample
end

def build_sentence(name, activity)
  "#{name} went #{activity} today."
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts build_sentence(pick_name(names), pick_activity(activities))
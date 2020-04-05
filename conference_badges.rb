def badge_maker(name)
  "Hello, my name is #{name}."
end 

def batch_badge_creator(array)
  array.collect do |attendee|
    badge_maker(attendee)
  end
end

def assign_rooms(attendees)
  room_assignments = []
  attendees.each.with_index do |attendee, index|
    room_assignments << "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
end

def assign_rooms (attendees)
  attendees.map.eith_index do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}"
  end
end

def assign_rooms(array)
  array.each_with_index do |assigned, index|
    array[array.index(assigned)] = "Hello, #{assigned}! You'll be assigned to room #{index+1}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees). each do |attendee|
    puts attendee
  end
  
  assign_rooms(attendees). each do |room|
    puts room 
  end
end

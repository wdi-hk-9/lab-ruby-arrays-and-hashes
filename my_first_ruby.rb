# method 1
@students = []

def students
  @students
end

#method 2
def add_student(fname, lname, tcourse)
  @students << {first_name: fname,
    last_name: lname,
    course: tcourse}
end

add_student("Ian", "Choo", "Web Development Immersive")
add_student("Bryan", "Fong", "Web Development Immersive")

puts "#{@students}"

#method 3
def compare_str(a,b)
  if a > b
    1
  elsif a == b
    0
  else
    -1
  end
end

def print_students
  @students
    .sort {|a,b|
      compare_str(a[:last_name],b[:last_name])}
    .each {|student|
    puts "
      #{student[:first_name]},
      #{student[:last_name]} -
      #{student[:course]}
      "}
end

print_students

# method 4

def class_strength
  @students.length
end

puts class_strength

# method 5
def get_info(s_hash)
  s_hash.keys.each {|key|
    puts "- #{key}"}
end

puts get_info(@students[1])

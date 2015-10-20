# Method 1
@students = []
def students
  return @students
end

# Method 2
def new_students(first_name, last_name, course_name)
  sutdent = {
    first_name: first_name,
    last_name: last_name,
    course_name: course_name
  }
  students.push student
end
new_students("Ian", "Kwok2", "wdi9")

# Method 3
def sorted_list
  sortedStudents = students.sort_by{ |student| students[:last_name]}
  each do |student|
    puts "#{student[:last_name]} , #{student[:first_name]} - #{student[:course_name]}"
  end
end

# Method 4
def display_message
  puts "There are #{students.count} students in our class"
end

# Method 5
def given_names
  students.each_key {|key| puts "- #{key}"}
end
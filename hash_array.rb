# First method
@students = []

def students
  @students
end

# Second method
def add_student(first_name, last_name, course_name)
  student = {
    first_name: first_name,
    last_name: last_name,
    course_name: course_name
  }
  students.push student
end

add_student("Ada", "Au", "wdi9")

# Third method
student2 = {
  first_name: "Jane",
  last_name: "Doe",
  course_name: "ux1"
}

add_student(student2)
@sorted_students = []

def sort_by_last_name
  newArr = students.sort_by { |student| student[:last_name] }
  newArr.each do |student|
    puts "#{student[:last_name]}, #{student[:first_name]} - #{student[:course_name]}"
  end
end

sort_by_last_name

# Fourth method
def display_number
  puts "There are #{students.length} students in our class"
end
display_number

# Fifth method
# And a final method should tell us what information any given student hash has in it. For example:
# - first_name
# - last_name
# - course_name
# etc.
def display_keys
  students.each_key { |key| puts "- #{key}" }
end

display_keys
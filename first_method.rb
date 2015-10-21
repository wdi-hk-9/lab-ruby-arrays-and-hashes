@students = []

# A method to return either our current list of students, or an empty array if we don't have one yet.
# This allows us to simply call `students` instead of `@students`
def students
  @students
end

students

# A method to create a new student hash and push it to our students array
# The argument here is named student to make it clear it's a hash holding details about a new student
def new_student(first_name, last_name, age)
  student = {
    first_name: first_name,
    last_name: last_name,
    age: age
  }
  students.push(student)
end

new_student("dennis", "cheung", "30")
new_student("pip", "bell", "35")
new_student("tom", "smith", "25")

puts "students is now #{students}"

# A method to list our existing students in a particular format
  # This uses a new method, sort_by, which works similar to sort & came from the documentation
  # Then we're using string interpolation to define exactly what we want the output to look like
def list_students
  students.sort_by { |student| student[:last_name] }.each do |student|
    puts "#{student[:last_name]}, #{student[:first_name]} - #{student[:age]}"
  end
end

puts list_students

# A method to count how many students we have, also using string interpolation to generate output
def count_students
  "We have #{students.count} in our course"
end

puts count_students

def student_details(student)
  students.first.keys.each do |attribute|
    "- #{attribute}"
  end
end

puts  student_details(students)
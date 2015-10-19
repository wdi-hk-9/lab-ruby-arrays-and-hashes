#The first method should return either our current list of students, or an empty array if we don't have one yet.This method will also allow us to simply call students instead of @students when we're in IRB
@students = []

def students
  @students
end



#The second method should accept data for a new student, create a hash out of the student's information, and add it to a running array of students.
def new_student(first_name, last_name, subject)
  student_info =
  {
  firstName: first_name,
  lastName: last_name,
  subject: subject
  }
  students.push student_info
  student_info.each_key {|key| puts "- #{key}"}
end

new_student("toni","romero", "wdi")
new_student("frances","cheung", "wdi")
new_student("ian","kwok", "wdi")
# puts students


# A third method should read back our list of students we've created in a specific format, sorted by last name:
  # http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-sort_by
def sort_by_last_name
  new_array = students.sort_by{|student_info| student_info[:lastName]}
  new_array.each do |student_info|
     puts "#{student_info[:lastName]}, #{student_info[:firstName]}, - #{student_info[:subject]}"
  end
end

puts sort_by_last_name


# A fourth method should display a message about how many students are in the class: "There are X students in our class"

def counts_students
  x = students.length
 "There are #{x} students in our class"
end #

puts counts_students



# final method: And a final method should tell us what information any given student hash has in it. For example:
  # http://ruby-doc.org/core-1.9.3/Hash.html#method-i-each_key
def student_keys

end
student_keys

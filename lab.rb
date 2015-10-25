@student_list = [];

# first method
def current_list
  @student_list
end

# second method
def new_student(first_name,last_name,course_name)
  arr = {}
  arr[:firstname] = first_name
  arr[:lastname] = last_name
  arr[:course] = course_name

  current_list << arr
end
puts new_student("John","Doe","WDI")
puts new_student("Jane", "Zelda","UX")
puts current_list

# third method
def sort_by_lastname(list)
  list.sort_by{|hash| hash[:lastname]}
  list.each do |student|
    puts student[:lastname] + ", " + student[:firstname] + " - " + student[:course]
  end
end

# forth method
def no_of_student
  puts "There are " + "#{current_list.length}" + " students in our class"
end

# fifth method
# EACH
def info_available(student_hash)
  student_hash.each{|key,value| puts "#{key}"}
end
# EACH KEY
def info(student_hash)
  student_hash.each_key{|key| puts key}
end

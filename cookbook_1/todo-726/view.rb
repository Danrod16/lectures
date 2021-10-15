class View
 def ask_user_for_title
  puts "Introduce a title:"
  puts ">"
  gets.chomp
 end

 def display_tasks(tasks)
  tasks.each_with_index do |task, index|
    mark = task.done? ? "[X]" : "[ ]"
    puts "#{index + 1} - #{task.title} #{mark}"
  end
 end

 def ask_user_for_index
  puts "Select a task(index):"
  puts ">"
  gets.chomp.to_i - 1
 end
end

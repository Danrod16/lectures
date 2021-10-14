class View
  def ask_user_for_title
    puts "add task"
    print ">"
    return gets.chomp
  end

  def print_tasks(tasks)
    # Tasks is an array of task instances
    tasks.each_with_index do |task, index|
      x = task.completed? ? "X" : " "
      puts "#{index + 1}: #{task.title} - [#{x}]"
    end
  end

  def ask_user_for_index
    puts "Which task would you like to complete? (insert a number)"
    puts ">"
    return gets.chomp.to_i - 1
  end

end

class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    # Infinite loop
    loop do
      puts "What do we want to do?"
      puts "1 - add a task"
      puts "2 - List tasks"
      puts "3 - Mark a task as completed"
      choice = gets.chomp.to_i
      puts ">"
      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_tasks
      elsif choice == 3
        @controller.mark_task_as_complete
      else
        puts "Wrong input"
      end
    end

  end
end

class Controller # User Actions
  def initialize(view, repository)
    @view = view
    @repository = repository
  end
  def add_task
    # 1.  Ask the user what they want to do
    title = @view.ask_user_for_title
    # 2. create an instance of task
    @task = Task.new(title)
    # 3. send the task tot he repository
    @repository.add(@task)
  end
  # CRUD

  def list_tasks
    # 1. ask the respoitory for list of task
    tasks = @repository.all
    # 2. ask the view to print the tasks
    @view.print_tasks(tasks)
  end

  def mark_task_as_complete
    # 1. Which task to complete
    index = @view.ask_user_for_index
    # 2. Ask the repo for task at index specified
    task = @repository.find(index)
    # 2. Mark the task as complete
    task.mark_as_completed
  end
end

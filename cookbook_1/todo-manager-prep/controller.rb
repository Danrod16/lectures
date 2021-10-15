class Controller # User Actions
  def initialize(view, repository)
    # STATE?
  end
  def add_task
    # 1.  Ask the user what they want to do
    # 2. create an instance of task
    # 3. send the task tot he repository
  end
  # CRUD

  def list_tasks
    # 1. ask the respoitory for list of task
    # 2. ask the view to print the tasks
  end

  def mark_task_as_complete
    # 1. Which task to complete
    # 2. Ask the repo for task at index specified
    # 2. Mark the task as complete
  end
end

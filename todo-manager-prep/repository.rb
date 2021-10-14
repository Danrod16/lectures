class Repository # database
  def initialize
    # State ?
    @tasks = [] #Array of task instances, Not string in the repository!
  end
  # Behavior
  def add(task)
    @tasks << task
  end
  # CRUD

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end
end

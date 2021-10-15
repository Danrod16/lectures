class Repository
  def initialize
    @tasks = []
    # State?
  end

  #behaviour

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end

end

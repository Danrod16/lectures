class Repository
  def initialize
    # State ?
  end

  # ---- Behavior-----
  # CRUD

  def all
    return @tasks
  end

  def find(index)
    return @tasks[index]
  end
end

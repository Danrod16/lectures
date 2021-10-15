class Task
  def initialize(title)
    @title = title
    @completed = false
  end

  def title
    return @title
  end

  def mark_as_completed
    @completed = true
  end

  def completed?
   return @completed
  end
end

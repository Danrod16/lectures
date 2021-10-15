class Task
  attr_reader :title
  def initialize(title)
    @title = title
    @completed = false
  end

  def done?
    return @completed
  end

  def done!
    @completed = true
  end

  # def title
  #   return @title
  # end
end

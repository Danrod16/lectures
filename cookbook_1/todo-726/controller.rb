require_relative 'task'

class Controller #User Actions
  def initialize(repository, view)
    @repository = repository
    @view = view
    #state?
  end

  def create
    # ask the user to introduce a title
    # introduce a title (gets.chomp)
    title = @view.ask_user_for_title
    # instantiate a new task with title as arguments
    task = Task.new(title)
    # save the task in the repo
    @repository.add(task)
  end

  def list
    list_tasks
  end

  def mark_as_done!
    # display tasks
    list_tasks
    # ask the user which task to complete(index).to_i - 1
    # assign the answer to a variable
    task_index = @view.ask_user_for_index
    # find the task in tasks
    task = @repository.find(task_index)
    # mark it as done
    task.done!
    list_tasks
  end

  def destroy
    # display the tasks
    list_tasks
    # ask the user to select a task to delete(index).to_i - 1
    task_index = @view.ask_user_for_index
    # delete the task from repo
    @repository.remove(task_index)
  end
private

  def list_tasks
    tasks = @repository.all
    @view.display_tasks(tasks)
  end
end

# require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'
task_repo = Repository.new
task_view = View.new
task_controller = Controller.new(task_repo, task_view)

router = Router.new(task_controller)
router.run


# p task_1.done?
# p task_1.done!

require_relative "task"
require_relative "view"
require_relative "repository"
require_relative "controller"
require_relative "router"

view = View.new
repository = Repository.new
controller = Controller.new(view, repository)


# controller.add_task
# controller.list_tasks
# controller.mark_task_as_complete
# controller.list_tasks

router = Router.new(controller)
router.run

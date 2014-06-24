class AddTaskToTaskItem < ActiveRecord::Migration
  def change
    add_reference :task_items, :task, index: true
  end
end

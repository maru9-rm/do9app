class AddTaskIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference(:comments, :task)
  end
end

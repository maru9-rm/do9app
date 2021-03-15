class AddUserIdToTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.datetime :deadline
      t.timestamps
    end
    add_reference(:tasks, :user)
  end
end

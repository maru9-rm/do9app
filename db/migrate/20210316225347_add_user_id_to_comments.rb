class AddUserIdToComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.timestamps
    end
    add_reference(:comments, :user)
  end
end

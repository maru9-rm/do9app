class AddUserIdToBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content
      t.timestamps
    end
    add_reference(:boards, :user)
  end
end

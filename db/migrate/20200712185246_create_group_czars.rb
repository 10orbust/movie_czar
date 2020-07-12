class CreateGroupCzars < ActiveRecord::Migration[6.0]
  def change
    create_table :group_czars do |t|
      t.integer :group_id
      t.integer :user_id
      t.integer :czar_count

      t.timestamps
    end
  end
end

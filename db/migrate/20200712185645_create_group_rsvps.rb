class CreateGroupRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :group_rsvps do |t|
      t.integer :group_id
      t.integer :user_id
      t.boolean :accecpted

      t.timestamps
    end
  end
end

class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string 'group_id'
      t.string 'time'
      t.string 'location'
      t.string 'members'
      t.string 'class_code'
      t.string 'group_name'
    end
  end
end

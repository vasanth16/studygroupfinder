class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.belongs_to :group
      t.belongs_to :user

      t.timestamps
    end
  end
end

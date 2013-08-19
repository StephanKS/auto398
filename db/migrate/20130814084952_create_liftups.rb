class CreateLiftups < ActiveRecord::Migration
  def change
    create_table :liftups do |t|
      t.string :comment
      t.integer :user_id
      t.datetime :duedate

      t.timestamps
    end

	add_index :liftups, :user_id

  end
end

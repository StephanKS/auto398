class AddStartDateToLiftups < ActiveRecord::Migration
  def change
    add_column :liftups, :start_date, :datetime
  end
end

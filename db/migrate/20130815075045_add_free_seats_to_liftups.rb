class AddFreeSeatsToLiftups < ActiveRecord::Migration
  def change
    add_column :liftups, :free_seats, :integer
  end
end

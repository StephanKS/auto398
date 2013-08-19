class AddFinalStopToLiftups < ActiveRecord::Migration
  def change
    add_column :liftups, :final_stop, :string
  end
end

class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :brand
      t.string :color

      t.timestamps
    end
  end
end

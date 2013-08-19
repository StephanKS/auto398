class AddAutarColumnsToUser < ActiveRecord::Migration 
  def self.up     
    change_table :users do |t|  
      t.has_attached_file :autar
    end 
  end 
   
  def self.down   
    drop_attached_file :users, :autar
  end 
end

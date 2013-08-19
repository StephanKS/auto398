class Micropost < ActiveRecord::Base
  attr_accessible :comment, :duedate, :user_id
end

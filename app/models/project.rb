class Project < ActiveRecord::Base


  belongs_to :user
  attr_accessible :name, :sponsor, :user_id
  has_many :studies
end

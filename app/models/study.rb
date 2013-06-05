class Study < ActiveRecord::Base
  belongs_to :project
  attr_accessible :NoOfSections, :NoOfSites, :average, :number, :objective, :range, :title, :total
end

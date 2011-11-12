class Feature < ActiveRecord::Base
  belongs_to :market
  
  validates :title, :presence => true
  validates :content, :presence => true, :length => { :minimum => 10 }
end

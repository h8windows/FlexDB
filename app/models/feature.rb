class Feature < ActiveRecord::Base
  belongs_to :market
  belongs_to :user
  
  validates :title, :presence => true
  validates :content, :presence => true, :length => { :minimum => 10 }
  
  has_many :assets
  accepts_nested_attributes_for :assets
  
end

class Market < ActiveRecord::Base
  validates :name, :presence => true
end

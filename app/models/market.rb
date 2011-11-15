class Market < ActiveRecord::Base
  
  has_many :features
  
  validates :name, :presence => true
  
  has_many :permissions, :as => :thing
  scope :readable_by, lambda { |user| joins(:permissions).where(:permissions => { :action => "view", :user_id => user.id })}
end

class Market < ActiveRecord::Base
  
  has_many :features
  
  validates :name, :presence => true
  
  has_many :permissions, :as => :thing
  scope :readable_by, lambda { |user| joins(:permissions).where(:permissions => { :action => "view", :user_id => user.id })}
  
  def self.for(user)
    user.admin? ? Market : Market.readable_by(user)
  end
  
  def last_feature
    features.last
  end
  
  def feature
    features.all
  end
  
end

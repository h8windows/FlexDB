permission_step = /^"([^"]*)" can ([^"]*?) ([o|i]n)?\s?the "([^"]*)" market$/
Given permission_step do |user, permission, on, market|
  create_permission(user, find_market(market), permission)
end

def create_permission(email, object, action)
  Permission.create!(:user => User.find_by_email!(email), :thing => object, :action => action)
end

def find_market(name)
  Market.find_by_name!(name)
end

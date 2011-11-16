permission_step = /^"([^"]*)" can ([^"]*?) ([o|i]n)?\s?the "([^"]*)" market$/
Given permission_step do |user, permission, on, market|
  create_permission(user, find_market(market), permission)
end

When /^I check "([^"]*)" for "([^"]*)"$/ do |permission, name|
  market = Market.find_by_name!(name)
  permission = permission.downcase.gsub(" ", "_")
  field_id = "permissions_#{market.id}_#{permission}"
  steps(%Q{When I check "#{field_id}"})
end

def create_permission(email, object, action)
  Permission.create!(:user => User.find_by_email!(email), :thing => object, :action => action)
end

def find_market(name)
  Market.find_by_name!(name)
end

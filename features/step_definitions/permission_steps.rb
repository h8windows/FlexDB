Given /^"([^"]*)" can view the "([^"]*)" market$/ do |user, market|
  Permission.create!(:user => User.find_by_email!(user), :thing => Market.find_by_name!(market), :action => "view")
end

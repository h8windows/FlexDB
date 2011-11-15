Given /^that market has a feature:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    @market.features.create!(attributes)
  end
end

Given /^"([^\"]*)" has created a feature for this project:$/ do |email, table|
  table.hashes.each do |attributes|
    attributes = attributes.merge!(:user => User.find_by_email!(email))
    @market.features.create!(attributes)
  end
end

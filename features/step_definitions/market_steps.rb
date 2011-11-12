Given /^there is a market called "([^"]*)"$/ do |name|
  Factory(:market, :name => name)
end
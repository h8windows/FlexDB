Given /^there is a market called "([^"]*)"$/ do |name|
  @market = Factory(:market, :name => name)
end
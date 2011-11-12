Given /^that market has a feature:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
    @market.features.create!(attributes)
  end
end

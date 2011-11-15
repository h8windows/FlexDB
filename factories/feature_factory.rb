Factory.define :feature do |feature|
  feature.title "A feature"
  feature.content "A feature, nothing more"
  feature.user { |u| u.association(:user) }
  feature.market { |p| p.association(:market) }
end
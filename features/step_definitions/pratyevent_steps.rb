Given /^there is a partyevent called "([^\"]*)"$/ do |name|
  Factory(:partyevent, :name => name)
end
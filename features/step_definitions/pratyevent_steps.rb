Given /^there is a partyevent called "([^\"]*)"$/ do |name|
  @partyevent = Factory(:partyevent, :name => name)
end
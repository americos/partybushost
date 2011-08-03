Given /^"([^"]*)" has created a partydetail for this partyevent:$/ do |email, table|
  table.hashes.each do |attr|
    attr = attr.merge!(:user => User.find_by_email(email))
    @partyevent.partydetails.create!(attr)
  end
end
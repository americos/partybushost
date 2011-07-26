Given /^that partyevent has a partydetail:$/ do |table|
  table.hashes.each do |attr|
    @partyevent.partydetails.create!(attr)
  end
end

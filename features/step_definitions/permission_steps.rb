Given /^"([^"]*)" can view the "([^"]*)" partyevent$/ do |user, partyevent|
  Permission.create(:user => User.find_by_email!(user),
                    :thing => Partyevent.find_by_name!(partyevent),
                    :action => "view")
end

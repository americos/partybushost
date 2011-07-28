Given /^there are the following users:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attr|
    @user = User.create!(attr)
  end
end
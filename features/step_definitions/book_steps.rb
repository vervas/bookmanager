Given /^I have books titled (.*)$/ do |titles|
  titles.split(', ').each do |title|
    Book.create!(:title => title)
  end
end

Given /^I have no books$/ do
  Book.delete_all
end

Then /^I should have ([0-9]+) books?$/ do |count|
  Book.count.should == count.to_i
end

When /^I go to the list of books$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the list of books$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I follow "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I press "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end


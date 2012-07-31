Given /^I have books titled (.*)$/ do |titles|
  titles.split(', ').each do |title|
    Book.create!(:title => title, :author => "Unknown", :isbn => rand(1000000))
  end
end

Given /^I have no books$/ do
  Book.delete_all
end

Then /^I should have ([0-9]+) books?$/ do |count|
  Book.count.should == count.to_i
end

When /^I go to the list of books$/ do
  visit('/books')
end

Then /^I should see "(.*?)"$/ do |title|
    page.should have_content(title)
end

Given /^I am on the list of books$/ do
  visit('/books')
end

When /^I follow "(.*?)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "(.*?)"$/ do |button|
  click_button(button)
end


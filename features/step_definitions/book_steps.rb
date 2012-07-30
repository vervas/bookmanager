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

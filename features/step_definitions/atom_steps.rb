When /^I view the atom feed$/ do
  visit '/feed'
  @feed = FeedMe.parse(page.body)
end

Then /^I see one feed item$/ do
  @feed.entries.length.should == 1
end

Then /^I see the first link is the first feed item$/ do
  pending # express the regexp above with the code you wish you had
end


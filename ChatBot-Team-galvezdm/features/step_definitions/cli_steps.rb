Given /^the application is running$/ do
  run_interactive(unescape("ruby chatbot.rb"))
end

Then /^I should see "([^"]*)"$/ do |arg1|
  assert_partial_output(arg1,all_output)
end

And /^I enter "([^"]*)"$/ do |arg1|
  type(arg1)
end

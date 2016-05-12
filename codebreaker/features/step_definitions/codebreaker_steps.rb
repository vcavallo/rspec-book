class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def standard_output
  @output ||= Output.new
end

Given(/^I am not playing yet$/) do
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(standard_output)
  game.start
end

Then(/^I should see "([^"]*)"$/) do |message|
  standard_output.messages.should include(message)
end

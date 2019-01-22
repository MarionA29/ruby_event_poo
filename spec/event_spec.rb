require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do
			# créé un event
      event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

      # petit test si l'event est bien créé
      expect(event.class).to eq(Event)

      
		end
	end
end

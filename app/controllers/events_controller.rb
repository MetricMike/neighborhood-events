class EventsController < ApplicationController
    def index
        @events = load_events
    end
    
    def load_events
        params = { category: '1',
          zip: '20009',
          status: 'upcoming',
          format: 'json',
          page: '50'}
        meetup_api = MeetupApi.new
        @events = meetup_api.open_events(params)
    end
end

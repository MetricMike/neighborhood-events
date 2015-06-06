class EventsController < ApplicationController
    def index
        @events = filtered_categories(params["Category"]) if params["Category"]
        @categories = all_categories
        @events = load_events(all_categories) unless params["Category"]
    end
    
    def all_categories
        MeetupApi.new.categories({ format: 'json', page: '50', omit: 'shortname' })
    end
    
    def filtered_categories(filters)
        params = { category: filters,
          zip: '20009',
          status: 'upcoming',
          format: 'json',
          page: '50'}
        meetup_api = MeetupApi.new
        @events = meetup_api.open_events(params)
    end
    
    def load_events(filters=all_categories)
        params = { category: all_categories["results"].collect { |c| c["id"] }.join(','),
          zip: '20009',
          status: 'upcoming',
          format: 'json',
          page: '50'}
        meetup_api = MeetupApi.new
        @events = meetup_api.open_events(params)
    end
end

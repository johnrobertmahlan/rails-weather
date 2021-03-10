class WeatherController < ApplicationController
    def index
    end

    def search
        
    end

    def city_params
        params.permit(:city)
        puts params[:city]
    end
end

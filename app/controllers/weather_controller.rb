class WeatherController < ApplicationController
    def index
    end

    def search
        city = find_weather(params[:city])
    end

    def find_weather(name)
        response = Excon.get("http://api.openweathermap.org/data/2.5/weather?q=#{name}&appid=3130b9f6f3c126f9bc6a4a2c72b3f56c")
        return nil if response.status != 200
        JSON.parse(response.body)
    end
end

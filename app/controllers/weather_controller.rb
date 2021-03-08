class WeatherController < ApplicationController
    def index
    end

    def request_api(url)
        response = Excon.get(url)
        return nil if response.status != 200
        JSON.parse(response.body)
    end

    def get_weather
        request_api("http://api.openweathermap.org/data/2.5/weather?q=Denver&appid=3130b9f6f3c126f9bc6a4a2c72b3f56c")
    end
end

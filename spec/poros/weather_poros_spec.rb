require 'rails_helper'

RSpec.describe "WeatherPoros" do
    describe "when the city is found" do
        it 'gets city weather' do
            denver ={:data=>
                    {:id=>"5419384",
                    :type=>"weather",
                    :attributes=>
                        {:id=>5419384,
                        :lat=>39.7392,
                        :lon=>-104.9847,
                        :temp=>301.46,
                        :temp_max=>305.51,
                        :temp_min=>294.55,
                        :humidity=>34,
                        :description=>"broken clouds",
                        :visibility=>10000,
                        :wind_speed=>nil,
                        :sunrise=>1627905607,
                        :sunset=>1627956728}}}

        data = CityWeather.new(denver)

        expect(data.id).to eq(5419384)
        expect(data.lat).to eq(39.7392)
        expect(data.lon).to eq(-104.9847)
        expect(data.temp).to eq(301.46)
        expect(data.temp_max).to eq(305.51)
        expect(data.temp_min).to eq(294.55)
        expect(data.humidity).to eq(34)
        expect(data.description).to eq("broken clouds")
        expect(data.visibility).to eq(10000)
        expect(data.wind_speed).to eq(nil)
        expect(data.sunrise).to eq(1627905607)
        expect(data.sunset).to eq(1627956728)
        expect(data.id).to eq(5419384)
        end
    end
end

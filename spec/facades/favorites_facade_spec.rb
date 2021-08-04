require 'rails_helper'

RSpec.describe 'FavoritesFacade' do
  xit 'returns the current users favorite city/cities correctly' do
    facades = FavoritesFacade.favorites(user_id, city_id)

    facades.each do |facade|

      expect(facade.id).to be_an(Integer)
      expect(facade.user_id).to be_an(Integer)
      expect(facade.city_id).to be_an(Integer)
      expect(facade.city).to be_a(String)
      expect(facade.state).to be_a(String)
      expect(facade.summary).to be_a(String)
      expect(facade.total_score).to be_a(Float)
      expect(facade.categories_hash_array).to be_an(Array)
    end
  end
end

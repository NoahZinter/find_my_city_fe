require 'rails_helper'

RSpec.describe FavoriteCity do
  it 'it should build a FavoriteCity PORO' do
    info = {
      id: 1,
      user_id: 1,
      city_id: 1,
      city: 'denver',
      state: 'CO',
      summary: "summary": "<p>Denver, Colorado, is among the top cities with a <b>free business environment</b>.\n\n    \n        According to our city rankings, this is a good place to live with high ratings in <b>startups</b>, <b>healthcare</b> and <b>environmental quality</b>.\n    \n\n    \n</p>\n\n\n    <p>Denver is one of the top ten city matches for 4.1% of Teleport users.</p>\n",
      total_score: 61.413243243243265,
      categories_hash_array: [
                                                  {
                                                      "name": "Housing",
                                                      "score_out_of_10": 3.8375
                                                  },
                                                  {
                                                      "name": "Cost of Living",
                                                      "score_out_of_10": 5.102
                                                  },
                                                  {
                                                      "name": "Startups",
                                                      "score_out_of_10": 7.8645
                                                  },
                                                  {
                                                      "name": "Venture Capital",
                                                      "score_out_of_10": 6.117
                                                  },
                                                  {
                                                      "name": "Travel Connectivity",
                                                      "score_out_of_10": 4.243
                                                  },
                                                  {
                                                      "name": "Commute",
                                                      "score_out_of_10": 4.530000000000001
                                                  },
                                                  {
                                                      "name": "Business Freedom",
                                                      "score_out_of_10": 8.671
                                                  },
                                                  {
                                                      "name": "Safety",
                                                      "score_out_of_10": 5.371
                                                  },
                                                  {
                                                      "name": "Healthcare",
                                                      "score_out_of_10": 8.615666666666666
                                                  },
                                                  {
                                                      "name": "Education",
                                                      "score_out_of_10": 3.6245
                                                  },
                                                  {
                                                      "name": "Environmental Quality",
                                                      "score_out_of_10": 7.11675
                                                  },
                                                  {
                                                      "name": "Economy",
                                                      "score_out_of_10": 6.5145
                                                  },
                                                  {
                                                      "name": "Taxation",
                                                      "score_out_of_10": 4.346
                                                  },
                                                  {
                                                      "name": "Internet Access",
                                                      "score_out_of_10": 5.418500000000001
                                                  },
                                                  {
                                                      "name": "Leisure & Culture",
                                                      "score_out_of_10": 6.2235
                                                  },
                                                  {
                                                      "name": "Tolerance",
                                                      "score_out_of_10": 7.860499999999999
                                                  },
                                                  {
                                                      "name": "Outdoors",
                                                      "score_out_of_10": 7.932999999999999
                                                  }
                                              ]
    }

    poro = FavoriteCity.new(info)

    expect(poro).to be_an_instance_of(FavoriteCity)
    expect(poro.id).to eq(1)
    expect(poro.user_id).to eq(1)
    expect(poro.city_id).to eq(1)
    expect(poro.city).to eq('denver')
    expect(poro.state).to eq('CO')
    expect(poro.summary).to eq("summary": "<p>Denver, Colorado, is among the top cities with a <b>free business environment</b>.\n\n    \n        According to our city rankings, this is a good place to live with high ratings in <b>startups</b>, <b>healthcare</b> and <b>environmental quality</b>.\n    \n\n    \n</p>\n\n\n    <p>Denver is one of the top ten city matches for 4.1% of Teleport users.</p>\n")
    expect(poro.total_score).to eq(61.41)
    expect(poro.categories_hash_array).to eq([
                                                {
                                                    "name": "Housing",
                                                    "score_out_of_10": 3.8375
                                                },
                                                {
                                                    "name": "Cost of Living",
                                                    "score_out_of_10": 5.102
                                                },
                                                {
                                                    "name": "Startups",
                                                    "score_out_of_10": 7.8645
                                                },
                                                {
                                                    "name": "Venture Capital",
                                                    "score_out_of_10": 6.117
                                                },
                                                {
                                                    "name": "Travel Connectivity",
                                                    "score_out_of_10": 4.243
                                                },
                                                {
                                                    "name": "Commute",
                                                    "score_out_of_10": 4.530000000000001
                                                },
                                                {
                                                    "name": "Business Freedom",
                                                    "score_out_of_10": 8.671
                                                },
                                                {
                                                    "name": "Safety",
                                                    "score_out_of_10": 5.371
                                                },
                                                {
                                                    "name": "Healthcare",
                                                    "score_out_of_10": 8.615666666666666
                                                },
                                                {
                                                    "name": "Education",
                                                    "score_out_of_10": 3.6245
                                                },
                                                {
                                                    "name": "Environmental Quality",
                                                    "score_out_of_10": 7.11675
                                                },
                                                {
                                                    "name": "Economy",
                                                    "score_out_of_10": 6.5145
                                                },
                                                {
                                                    "name": "Taxation",
                                                    "score_out_of_10": 4.346
                                                },
                                                {
                                                    "name": "Internet Access",
                                                    "score_out_of_10": 5.418500000000001
                                                },
                                                {
                                                    "name": "Leisure & Culture",
                                                    "score_out_of_10": 6.2235
                                                },
                                                {
                                                    "name": "Tolerance",
                                                    "score_out_of_10": 7.860499999999999
                                                },
                                                {
                                                    "name": "Outdoors",
                                                    "score_out_of_10": 7.932999999999999
                                                }
                                            ])
  end
end

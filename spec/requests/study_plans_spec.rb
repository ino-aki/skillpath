require 'rails_helper'

RSpec.describe "StudyPlans", type: :request do
  describe "GET /calculate_study_time" do
    it "returns http success" do
      get "/study_plans/calculate_study_time"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe "Futures", type: :request do
  # futureを作成する
  describe "POST /create" do
    # 正常なレスポンスを返すこと
    it "returns a success response" do
      post "/futures/create", params: { future: { future_image: "ラーメン店を開業する。" } }.to_json, headers: { "Content-Type" => "application/json" }
      expect(response).to be_successful
    end
  end
end

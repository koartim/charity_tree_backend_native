class Api::V1::CharitiesController < ApplicationController

  def index
    response = RestClient.get("https://api.data.charitynavigator.org/v2/Organizations?categoryID=6&app_id=#{ENV["APP_KEY"]}&app_key=#{ENV["API_KEY"]}")
    @charities = JSON.parse(response)
    render json: @charities
  end

  def show
    @charity = Charity.find(params[:id])
    render json: @charity
  end

end

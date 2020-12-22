class AgentsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @agents = Agent.all
  end

  def show
    @agent = Agent.find(params[:id])
    @review = Review.new
  end
end

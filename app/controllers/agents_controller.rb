class AgentsController < ApplicationController
  def index
    @agents = Agent.all
  end

  def show
    @agent = Agent.find(params[:id])
    @review = Review.new
  end
end

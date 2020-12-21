class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @agent = Agent.find(params[:agent_id])
    @reviews = @agent.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to agent_reviews_path(@review.agent_id)
    else
      @agent = Agent.find(params[:id])
      render "agents/show"
    end

  end

  private

  def review_params
    params.require(:review).permit(:agent_id, :score, :deal_type_id, :close_deal_id, :content)
  end

end

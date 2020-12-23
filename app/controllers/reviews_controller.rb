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
      @agent = Agent.find(params[:agent_id])
      render 'agents/show'
    end
  end

  def edit
    @agent = Agent.find(params[:agent_id])
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])       # 定義しないとエラーが出る
    if @review.update(review_params)
      redirect_to agent_reviews_path(@review.agent_id)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])       # 定義しないとエラーが出る
    @review.destroy if @review.user_id == current_user.id
    redirect_to agent_reviews_path(params[:agent_id])
  end

  private

  def review_params
    params.require(:review).permit(:agent_id, :score, :deal_type_id, :close_deal_id, :content)
  end
end

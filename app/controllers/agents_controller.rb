class AgentsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new]

  def index
    @agents = Agent.all
  end

  def show
    @agent = Agent.find(params[:id])
    @review = Review.new
  end
  
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      redirect_to agents_path
    else
      render :new
    end
  end

  def search
    @agents = Agent.search(params[:keyword])
  end


  private

  def agent_params
    params.require(:agent).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :company_name, :company_location).merge(user_id: current_user.id)
  end

end

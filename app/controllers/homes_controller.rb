class HomesController < ApplicationController
  def top
    redirect_to agents_path if user_signed_in?
  end
end

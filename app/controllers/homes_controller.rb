class HomesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to agents_path
    end
  end
end

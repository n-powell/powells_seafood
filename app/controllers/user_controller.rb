class ReviewsController < ApplicationController
  def destroy
    redirect_to new_user_registration_path
  end

end

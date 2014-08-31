class FavoritePlacesController < ApplicationController

 before_action :set_place
  
  def create
    if Favorite.create(favorited: @place, user: current_user)
      redirect_to @place, notice: 'Place has been favorited'
    else
      redirect_to @place, alert: 'Something went wrong. *womp womp*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @place.id, user_id: current_user.id).first.destroy
    redirect_to @place, notice: 'Place is no longer a favorite'
  end
  
  private
  
  def set_place
    @place = Place.find(params[:place_id] || params[:id])
  end


end

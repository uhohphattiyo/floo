class FavoritePlacesController < ApplicationController

 before_action :set_place,  except: [:index]
 before_action :authenticate_user!
  
 def index
  @places = current_user.favorite_places.all
 end


  def create

    if Favorite.create(favorited: @place, user: current_user)    
    respond_to do |format|
      format.html {redirect_to @place, notice: 'Place has been favorited'}
      format.js 
    end
    else
    respond_to do |format|
      format.html {redirect_to @place, alert: 'Something went wrong. *womp womp*' }
      format.js 
    end
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @place.id, user_id: current_user.id).first.destroy
    respond_to do |format|
      redirect_to @place, notice: 'Place is no longer a favorite'
    end
  end

  def show
    @favorite_place = FavoritePlace.find(params[:id])
  end

  def update
    @favorite_place = FavoritePlace.find(params[:id])
    @favorite_place.update_attributes[params[:place]]
    respond_to do |format|
        format.html { redirect_to @place }
        format.js 
    end  
  end

  private
  


  def set_place
    @place = Place.find(params[:place_id] || params[:id])
  end



end

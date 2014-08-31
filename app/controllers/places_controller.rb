class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin_user!, except: [:index, :show]

  def index
        @places = Place.all 
        unless      
        @places = Place.search(params[:kind], params[:location_id]).paginate(:page => params[:page], :per_page => 16)
        end
  end

  def search

  end


  def show
  end

  
  def new
    @place = current_admin_user.places.build
  end

  def edit
  end


  def create
    @place = current_admin_user.places.build(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @place.destroy
    respond_to do |format|
      format.html { redirect_to places_url, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    
    def set_place
      @place = Place.find(params[:id])
    end

    
    def place_params
      params.require(:place).permit(:location_id, :budget_id, :name, :kind, :description, :image, :address, :dress, :website, :food, :city_id, :latitude, :longitude)
    end
end

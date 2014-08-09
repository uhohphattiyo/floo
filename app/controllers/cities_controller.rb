class CitiesController < InheritedResources::Base
  before_action :set_city, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin_user!, except: [:index, :show]

 def index
    @cities = City.all
 end


  def show
     ##  for each city
     ##  if city[:location_id] == place[:location_id]
     ##      render Place.where(:conditions => ["location_id = ? == location_id = ?", city, place])
     
     @places = @city.places
    
  end

  
  
  def new
    @city = current_admin_user.cities.build
  end

  def edit
  end


  def create
    @city = current_admin_user.cities.build(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render :show, status: :created, location: @city }
      else
        format.html { render :new }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @city.update(city_params)
        format.html { redirect_to @city, notice: 'City was successfully updated.' }
        format.json { render :show, status: :ok, location: @city }
      else
        format.html { render :edit }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @city.destroy
    respond_to do |format|
      format.html { redirect_to cities_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_city
      @city = City.find(params[:id])
    end

    
    def city_params
      params.require(:city).permit(:image, :location_id, :name)
    end



end

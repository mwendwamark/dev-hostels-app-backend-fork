class HostelsController < ApplicationController
  def index
      hostels = Hostel.all
      render json: hostels
    end
    def show
      hostel = Hostel.find(params[:id])
      if hostel
        render json: hostel
      else
        render json: { error: "Hostel not found" }, status: :not_found
      end
    end
    def destroy
      hostel= Hostel.find_by(id: params[:id])
      if hostel
        hostel.destroy
        head :no_content
      else
        render json: { error: "Hostel not found" }, status: :not_found
      end
    end
    def create
      # Create a new Hostel instance with the permitted parameters
      hostel = Hostel.new(hostel_params)
      # Assuming you have an 'image' parameter containing the image data from the frontend
      # You can use an ORM like Active Storage or CarrierWave to handle image uploads and storage.
      # For simplicity, we'll assume the image data is a string containing the URL.
      hostel.image_url = params[:image_url]
      # Save the hostel record to the database
      if hostel.save
        render json: hostel, status: :created
      else
        render json: { error: "Failed to create hostel" }, status: :unprocessable_entity
      end
    end
    def update
      update_hostel = Hostel.find(params[:id])
      update_hostel.update!(hostel_params)
      render json: update_hostel, status: :accepted
    end
    # def show
    #   @hostel = Hostel.find(params[:id])
    #   @reserved_dates = @hostel.reserved_dates
    # end
    private
  #   def render_unprocessable_entity_response(invalid)
  #     render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  #   end
    def hostel_params
      params.permit(:room_type, :total_occupancy, :total_bedrooms, :total_bathrooms, :total_beds, :summary, :address, :has_tv, :has_kitchen, :has_air_conditioner, :has_internet, :has_study_room, :has_meals, :price_per_day, :published_at, :user_id, :latitude, :longitude, :image_url)
    end
end
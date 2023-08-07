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
        hostel = Hostel.create!(hostel_params)
        render json: hostel, status: :created
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

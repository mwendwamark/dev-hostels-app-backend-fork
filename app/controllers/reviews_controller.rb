class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
      end
    
      def show
       review = Review.find(params[:id])
        ifreview
          render json:review
        else
          render json: { error: "Review not found" }, status: :not_found
        end
      end
    
      def destroy
       review= Review.find_by(id: params[:id])
        if review
         review.destroy
          head :no_content
        else
          render json: { error: "Review not found" }, status: :not_found
        end
      end
    
      def create
       review =Review.create!(hostel_params)
        render json:review, status: :created
      end
      
      def update
        update_review =Review.find(params[:id])
        update_review.update!(review_params)
        render json: update_review, status: :accepted
      end
      
      # def show
      #   @hostel =review.find(params[:id])
      #   @reserved_dates = @hostel.reserved_dates
      # end
    
      private
    
    #   def render_unprocessable_entity_response(invalid)
    #     render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    #   end
    
      def review_params
        params.permit(:user_id, :hostel_id, :start_date, :end_date, :price, :total)

      end
end

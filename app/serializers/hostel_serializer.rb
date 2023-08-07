class HostelSerializer < ActiveModel::Serializer
  attributes :id, :room_type, :total_occupancy, :total_bedrooms, :total_bathrooms, :total_beds, :summary, :address, :has_tv, :has_kitchen, :has_air_conditioner, :has_internet, :has_study_room, :has_meals, :price, :published_at, :user_id, :latitude, :longitude, :image_url_1, :image_url_2, :image_url_3, :image_url_4, :image_url_5, :price_per_day
end

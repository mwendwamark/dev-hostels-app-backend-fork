class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reservation_id, :ratings, :comments
end

class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :hostel_id, :start_date, :end_date, :price, :total, :created_at, :updated_at
end

class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :mode_of_payment
  has_one :reservation
end

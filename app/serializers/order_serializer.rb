class OrderSerializer < ActiveModel::Serializer
  attributes :id,:package_type, :pick_up_location, :drop_off_location, :date, :receiver_name, :number_of_kgs
end

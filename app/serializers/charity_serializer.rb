class CharitySerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :rating_image, :financial_rating, :accountability_rating, :category, :deductibility, :state
end

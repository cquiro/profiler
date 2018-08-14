class ZemogaPortfolioApi::UserSerializer < ActiveModel::Serializer                                                  
  attributes :full_name, :title, :description, :image

  delegate :full_name, to: :object                                                              
end

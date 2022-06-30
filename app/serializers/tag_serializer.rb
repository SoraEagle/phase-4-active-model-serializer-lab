class TagSerializer < ActiveModel::Serializer
  attributes :name, :big_name
  has_many :posts

  def big_name
    self.object.name.upcase
  end
end
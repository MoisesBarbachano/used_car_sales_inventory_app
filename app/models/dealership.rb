class Dealership
  include Mongoid::Document
  include ActiveModel::Validations

  validates :name, presence: true

  field :name, type: String

  has_many :users
  has_many :cars
end

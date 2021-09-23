class Car
  include Mongoid::Document
  include ActiveModel::Validations
  include Mongoid::MoneyField
  include Mongoid::Enum

  validates :name, :price, :condition, presence: true
  validates_numericality_of :price, greater_than: 0

  field :name, type: String
  money_field :price, default: '0 USD'
  enum :condition, [:new_car, :used]

  belongs_to :dealership
end

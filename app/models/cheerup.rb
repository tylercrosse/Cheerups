class Cheerup < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :text, presence: true,
  length: {maximum: 140}

end

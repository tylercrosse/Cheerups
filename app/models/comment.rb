class Comment < ActiveRecord::Base
  belongs_to :cheerup
  # it would be nice to also have some validations on comments
end

class Product < ActiveRecord::Base
  scope :named, ->(q) { where 'name like ?', "%#{q}%" }
end

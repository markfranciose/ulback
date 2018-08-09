class ApplicationRecord < ActiveRecord::Base
  has_one_attached :file
  self.abstract_class = true
end

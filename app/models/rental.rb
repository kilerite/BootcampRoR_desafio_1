class Rental < ApplicationRecord
  belongs_to :client
  belongs_to :movie
end

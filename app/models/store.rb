class Store < ApplicationRecord
    has_many :stocks
    has_many :books, through: :stocks,  dependent: :destroy
end

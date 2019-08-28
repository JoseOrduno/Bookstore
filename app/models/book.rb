class Book < ApplicationRecord
    has_many :stocks
    has_many :stores, through: :stocks,  dependent: :destroy
end

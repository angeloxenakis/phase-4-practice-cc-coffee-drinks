class Order < ApplicationRecord
    belongs_to :drink 
    belongs_to :customer 
end

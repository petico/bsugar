class BsDb < ApplicationRecord
    has_many :bs_types, -> {order("name asc")}
end

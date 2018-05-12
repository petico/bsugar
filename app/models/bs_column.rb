class BsColumn < ApplicationRecord
    belongs_to :bs_type
    delegate :name, to: :bs_type, prefix: :bs_type, allow_nil: true
    delegate :short_name, to: :bs_type, prefix: :bs_type, allow_nil: true

    validates :logical, presence: true, length:{ maximum: 50 } 
    validates :physical, presence: true, length:{ maximum: 50 } 

end

class BsType < ApplicationRecord
    belongs_to :bs_db
    delegate :name, to: :bs_db, prefix: :bs_db, allow_nil: true
end

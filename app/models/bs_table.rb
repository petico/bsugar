class BsTable < ApplicationRecord
    belongs_to :bs_db
    belongs_to :bs_system
    has_many :bs_columns

    delegate :name, to: :bs_db, prefix: :bs_db, allow_nil: true
    delegate :name, to: :bs_system, prefix: :bs_system, allow_nil: true
end

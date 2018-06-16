class DbConnection < ApplicationRecord
    belongs_to :bs_db
    has_many :bs_systems
    delegate :name, to: :bs_db, prefix: :bs_db, allow_nil: true
end

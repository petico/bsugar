class BsSystem < ApplicationRecord
    belongs_to :bs_project
    has_many :bs_tables
    delegate :name, to: :bs_project, prefix: :bs_project, allow_nil: true
end


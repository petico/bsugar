class BsTable < ApplicationRecord
    belongs_to :bs_db
    belongs_to :bs_system
    has_many :bs_columns, -> {order("rowno asc")}

    delegate :name, to: :bs_db, prefix: :bs_db, allow_nil: true
    delegate :name, to: :bs_system, prefix: :bs_system, allow_nil: true

    def self.allocate_rowno(id)
        bs_columns = BsTable.find(id).bs_columns.order("rowno asc, allocate desc")
        rowno = 1
        bs_columns.each do |bs_column|
            bs_column.rowno = rowno
            bs_column.allocate = false
            bs_column.save
            rowno += 1
        end
    end
end

###############################################
# テーブルモデル
# created_at 2018.05.11 Petico
###############################################
class BsTable < ApplicationRecord
    belongs_to :bs_db
    belongs_to :bs_system
    has_many :bs_columns, -> {order("rowno asc")}

    delegate :name, to: :bs_db, prefix: :bs_db, allow_nil: true
    delegate :name, to: :bs_system, prefix: :bs_system, allow_nil: true

    validates :bs_db_id, presence: true
    validates :bs_system_id, presence: true
    validates :logical, presence: true, length:{ maximum: 50 } 
    validates :physical, presence: true, length:{ maximum: 50 } 
    validates :remark, length:{ maximum: 100 } 

    # 行番号の再構成
    # 行追加、行削除時に実行する。
    # 追加行はallocate:trueで追加される
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

    # 次行番号を取得
    def next_rowno
      maxcolumn = self.bs_columns.max_by{|a| a.rowno }
      return maxcolumn ? maxcolumn.rowno + 1 : 1
    end
end

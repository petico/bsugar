###############################################
# カラムコントローラ
# created_at 2018.05.11 Petico
###############################################
class BsColumnsController < ApplicationController
  before_action :set_bs_column, only: [:show, :edit, :update, :destroy]

  # GET /bs_columns
  # GET /bs_columns.json
  def index
    @bs_table = BsTable.find(params[:bs_table_id])
    @bs_columns = @bs_table.bs_columns.all
  end

  # GET /bs_columns/1
  # GET /bs_columns/1.json
  def show
  end

  # GET /bs_columns/new
  def new
    @bs_table = BsTable.find(params[:bs_table_id])
    allocate = params[:rowno].present? 
    rowno = allocate ? params[:rowno] : @bs_table.next_rowno
    @bs_column = @bs_table.bs_columns.build(rowno: rowno, allocate: allocate)
 end

  # GET /bs_columns/1/edit
  def edit
  end

  # POST /bs_columns
  # POST /bs_columns.json
  def create
    @bs_table = BsTable.find(params[:bs_table_id])
    @bs_column = @bs_table.bs_columns.new(bs_column_params)

    respond_to do |format|
      if @bs_column.save
        BsTable.allocate_rowno(@bs_table.id)
        format.html { redirect_to @bs_column, notice: 'Bs column was successfully created.' }
        format.json { render :show, status: :created, location: @bs_column }
        format.js { render 'remote_success'}
      else
        format.html { render :new }
        format.json { render json: @bs_column.errors, status: :unprocessable_entity }
        format.js { render 'remote_fail'}
      end
    end
  end

  # PATCH/PUT /bs_columns/1
  # PATCH/PUT /bs_columns/1.json
  def update
    respond_to do |format|
      if @bs_column.update(bs_column_params)
        BsTable.allocate_rowno(@bs_table.id)
        format.html { redirect_to @bs_column, notice: 'Bs column was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_column }
        format.js { render 'remote_success'}
      else
        format.html { render :edit }
        format.json { render json: @bs_column.errors, status: :unprocessable_entity }
        format.js { render 'remote_fail'}
      end
    end
  end

  # DELETE /bs_columns/1
  # DELETE /bs_columns/1.json
  def destroy
    @bs_column.destroy
    respond_to do |format|
      BsTable.allocate_rowno(@bs_table.id)
      format.html { redirect_to bs_columns_url, notice: 'Bs column was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render 'remote_success'}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_column
      @bs_table = BsTable.find(params[:bs_table_id])
      @bs_column = @bs_table.bs_columns.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_column_params
      params.require(:bs_column).permit(:bs_table_id, :rowno, :logical, :physical, :pk, :fk, :uq, :nn, :bs_type_id, :precision, :scale, :df, :remark, :remark, :ver, :rev, :locked, :allocate, :delflag)
    end
end

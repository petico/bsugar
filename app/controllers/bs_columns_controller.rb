class BsColumnsController < ApplicationController
  before_action :set_bs_column, only: [:show, :edit, :update, :destroy]

  # GET /bs_columns
  # GET /bs_columns.json
  def index
    @bs_columns = BsColumn.all
  end

  # GET /bs_columns/1
  # GET /bs_columns/1.json
  def show
  end

  # GET /bs_columns/new
  def new
    @bs_column = BsColumn.new
  end

  # GET /bs_columns/1/edit
  def edit
  end

  # POST /bs_columns
  # POST /bs_columns.json
  def create
    @bs_column = BsColumn.new(bs_column_params)

    respond_to do |format|
      if @bs_column.save
        format.html { redirect_to @bs_column, notice: 'Bs column was successfully created.' }
        format.json { render :show, status: :created, location: @bs_column }
      else
        format.html { render :new }
        format.json { render json: @bs_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_columns/1
  # PATCH/PUT /bs_columns/1.json
  def update
    respond_to do |format|
      if @bs_column.update(bs_column_params)
        format.html { redirect_to @bs_column, notice: 'Bs column was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_column }
      else
        format.html { render :edit }
        format.json { render json: @bs_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_columns/1
  # DELETE /bs_columns/1.json
  def destroy
    @bs_column.destroy
    respond_to do |format|
      format.html { redirect_to bs_columns_url, notice: 'Bs column was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_column
      @bs_column = BsColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_column_params
      params.require(:bs_column).permit(:bs_table_id, :rowno, :logical, :physical, :pk, :fk, :uq, :nn, :bs_type_id, :precision, :scale, :df, :remark, :remark, :ver, :rev, :locked, :delflag)
    end
end

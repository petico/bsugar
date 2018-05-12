class BsTablesController < ApplicationController
  before_action :set_bs_table, only: [:show, :edit, :update, :destroy]

  # GET /bs_tables
  # GET /bs_tables.json
  def index
    @bs_tables = BsTable.all
  end

  # GET /bs_tables/1
  # GET /bs_tables/1.json
  def show
  end

  # GET /bs_tables/new
  def new
    @bs_table = BsTable.new
  end

  # GET /bs_tables/1/edit
  def edit
  end

  # POST /bs_tables
  # POST /bs_tables.json
  def create
    @bs_table = BsTable.new(bs_table_params)

    respond_to do |format|
      if @bs_table.save
        format.html { redirect_to @bs_table, notice: 'Bs table was successfully created.' }
        format.json { render :show, status: :created, location: @bs_table }
      else
        format.html { render :new }
        format.json { render json: @bs_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_tables/1
  # PATCH/PUT /bs_tables/1.json
  def update
    respond_to do |format|
      if @bs_table.update(bs_table_params)
        format.html { redirect_to @bs_table, notice: 'Bs table was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_table }
      else
        format.html { render :edit }
        format.json { render json: @bs_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_tables/1
  # DELETE /bs_tables/1.json
  def destroy
    @bs_table.destroy
    respond_to do |format|
      format.html { redirect_to bs_tables_url, notice: 'Bs table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_table
      @bs_table = BsTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_table_params
      params.require(:bs_table).permit(:bs_system_id, :logical, :physical, :remark, :bs_db_id, :db_name, :schema, :delflag)
    end
end

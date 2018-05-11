class BsDbsController < ApplicationController
  before_action :set_bs_db, only: [:show, :edit, :update, :destroy]

  # GET /bs_dbs
  # GET /bs_dbs.json
  def index
    @bs_dbs = BsDb.all
  end

  # GET /bs_dbs/1
  # GET /bs_dbs/1.json
  def show
  end

  # GET /bs_dbs/new
  def new
    @bs_db = BsDb.new
  end

  # GET /bs_dbs/1/edit
  def edit
  end

  # POST /bs_dbs
  # POST /bs_dbs.json
  def create
    @bs_db = BsDb.new(bs_db_params)

    respond_to do |format|
      if @bs_db.save
        format.html { redirect_to @bs_db, notice: 'Bs db was successfully created.' }
        format.json { render :show, status: :created, location: @bs_db }
      else
        format.html { render :new }
        format.json { render json: @bs_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_dbs/1
  # PATCH/PUT /bs_dbs/1.json
  def update
    respond_to do |format|
      if @bs_db.update(bs_db_params)
        format.html { redirect_to @bs_db, notice: 'Bs db was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_db }
      else
        format.html { render :edit }
        format.json { render json: @bs_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_dbs/1
  # DELETE /bs_dbs/1.json
  def destroy
    @bs_db.destroy
    respond_to do |format|
      format.html { redirect_to bs_dbs_url, notice: 'Bs db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_db
      @bs_db = BsDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_db_params
      params.require(:bs_db).permit(:name, :delflag)
    end
end

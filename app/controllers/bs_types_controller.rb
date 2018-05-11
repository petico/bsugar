class BsTypesController < ApplicationController
  before_action :set_bs_type, only: [:show, :edit, :update, :destroy]

  # GET /bs_types
  # GET /bs_types.json
  def index
    @bs_types = BsType.all
  end

  # GET /bs_types/1
  # GET /bs_types/1.json
  def show
  end

  # GET /bs_types/new
  def new
    @bs_type = BsType.new
  end

  # GET /bs_types/1/edit
  def edit
  end

  # POST /bs_types
  # POST /bs_types.json
  def create
    @bs_type = BsType.new(bs_type_params)

    respond_to do |format|
      if @bs_type.save
        format.html { redirect_to @bs_type, notice: 'Bs type was successfully created.' }
        format.json { render :show, status: :created, location: @bs_type }
      else
        format.html { render :new }
        format.json { render json: @bs_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_types/1
  # PATCH/PUT /bs_types/1.json
  def update
    respond_to do |format|
      if @bs_type.update(bs_type_params)
        format.html { redirect_to @bs_type, notice: 'Bs type was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_type }
      else
        format.html { render :edit }
        format.json { render json: @bs_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_types/1
  # DELETE /bs_types/1.json
  def destroy
    @bs_type.destroy
    respond_to do |format|
      format.html { redirect_to bs_types_url, notice: 'Bs type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_type
      @bs_type = BsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_type_params
      params.require(:bs_type).permit(:bs_db_id, :name, :short_name, :is_scale, :delflag)
    end
end

class BsSystemsController < ApplicationController
  before_action :set_bs_system, only: [:show, :edit, :update, :destroy]

  # GET /bs_systems
  # GET /bs_systems.json
  def index
    @bs_project = BsProject.find(params[:bs_project_id])
    @bs_systems = @bs_project.bs_systems.all
  end

  # GET /bs_systems/1
  # GET /bs_systems/1.json
  def show
  end

  # GET /bs_systems/new
  def new
    @bs_project = BsProject.find(params[:bs_project_id])
    @bs_system = @bs_project.bs_systems.build
  end

  # GET /bs_systems/1/edit
  def edit
  end

  # POST /bs_systems
  # POST /bs_systems.json
  def create
    @bs_project = BsProject.find(params[:bs_project_id])
    @bs_system = @bs_project.bs_systems.new(bs_system_params)

    respond_to do |format|
      if @bs_system.save
        format.html { redirect_to [@bs_project, @bs_system], notice: 'Bs system was successfully created.' }
        format.json { render :show, status: :created, location: @bs_system }
      else
        format.html { render :new }
        format.json { render json: @bs_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_systems/1
  # PATCH/PUT /bs_systems/1.json
  def update
    respond_to do |format|
      if @bs_system.update(bs_system_params)
        format.html { redirect_to [@bs_project, @bs_system], notice: 'Bs system was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_system }
      else
        format.html { render :edit }
        format.json { render json: @bs_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_systems/1
  # DELETE /bs_systems/1.json
  def destroy
    @bs_system.destroy
    respond_to do |format|
      format.html { redirect_to @bs_project, notice: 'Bs system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_system
      @bs_project = BsProject.find(params[:bs_project_id])
      @bs_system = @bs_project.bs_systems.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_system_params
      params.require(:bs_system).permit(:bs_project_id, :name, :description, :delflag)
    end
end

class BsProjectsController < ApplicationController
  before_action :set_bs_project, only: [:show, :edit, :update, :destroy]

  # GET /bs_projects
  # GET /bs_projects.json
  def index
    @bs_projects = BsProject.all
  end

  # GET /bs_projects/1
  # GET /bs_projects/1.json
  def show
  end

  # GET /bs_projects/new
  def new
    @bs_project = BsProject.new
  end

  # GET /bs_projects/1/edit
  def edit
  end

  # POST /bs_projects
  # POST /bs_projects.json
  def create
    @bs_project = BsProject.new(bs_project_params)

    respond_to do |format|
      if @bs_project.save
        format.html { redirect_to @bs_project, notice: 'Bs project was successfully created.' }
        format.json { render :show, status: :created, location: @bs_project }
      else
        format.html { render :new }
        format.json { render json: @bs_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs_projects/1
  # PATCH/PUT /bs_projects/1.json
  def update
    respond_to do |format|
      if @bs_project.update(bs_project_params)
        format.html { redirect_to @bs_project, notice: 'Bs project was successfully updated.' }
        format.json { render :show, status: :ok, location: @bs_project }
      else
        format.html { render :edit }
        format.json { render json: @bs_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs_projects/1
  # DELETE /bs_projects/1.json
  def destroy
    @bs_project.destroy
    respond_to do |format|
      format.html { redirect_to bs_projects_url, notice: 'Bs project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bs_project
      @bs_project = BsProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bs_project_params
      params.require(:bs_project).permit(:name, :remark, :delflag)
    end
end

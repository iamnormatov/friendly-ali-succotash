class ProfersController < ApplicationController
  before_action :set_profer, only: %i[ show edit update destroy ]

  # GET /profers or /profers.json
  def index
    @project = Project.find(params[:project_id]) if params[:project_id].present?
    @profers = @project.profers
    @profer = @project.profers.new

  end

  # GET /profers/1 or /profers/1.json
  def show
  end

  # GET /profers/new
  def new
    @profer = Profer.new
  end

  # GET /profers/1/edit
  def edit
  end

  # POST /profers or /profers.json
  def create
    @profer = Profer.new(profer_params)

    respond_to do |format|
      if @profer.save
        format.html { redirect_to project_profers_url(@profer.project), notice: "Profer was successfully created." }
        format.json { render :show, status: :created, location: @profer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profer.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @profer.destroy
    @project = @profer.project
    respond_to do |format|
      format.html { redirect_to project_profers_url(@project), notice: "Profer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_profer
      @profer = Profer.find(params[:id])
    end

    def profer_params
      params.require(:profer).permit(:des, :project_id, :prof)
    end
end

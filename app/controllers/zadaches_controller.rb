class ZadachesController < ApplicationController
  before_action :set_zadach, only: %i[ show edit update destroy ]

  # GET /zadaches or /zadaches.json
  def index
    @project = Project.find(params[:project_id]) if params[:project_id].present?
    @zadaches = @project.zadaches
    @zadach = @project.zadaches.new
  end

  # GET /zadaches/1 or /zadaches/1.json
  def show
  end

  # GET /zadaches/new
  def new
    @zadach = Zadach.new
  end

  # GET /zadaches/1/edit
  def edit
  end

  def create
    @zadach = Zadach.new(zadach_params)

    respond_to do |format|
      if @zadach.save
        @project = @zadach.project
        format.html { redirect_to project_zadaches_url(@project), notice: "Zadach was successfully created." }
        format.json { render :show, status: :created, location: @zadach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @zadach.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @zadach.update(zadach_params)
        format.html { redirect_to zadach_url(@zadach), notice: "Zadach was successfully updated." }
        format.json { render :show, status: :ok, location: @zadach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @zadach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zadaches/1 or /zadaches/1.json
  def destroy
    @zadach.destroy
    @project = @zadach.project
    respond_to do |format|
      format.html { redirect_to project_zadaches_url(@project), notice: "Zadach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zadach
      @zadach = Zadach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def zadach_params
      params.require(:zadach).permit(:title, :project_id)
    end
end

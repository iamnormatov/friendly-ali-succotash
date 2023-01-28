class ChansController < ApplicationController
  before_action :set_chan, only: %i[ show edit update destroy ]

  # GET /chans or /chans.json
  def index
    @project = Project.find(params[:project_id]) if params[:project_id].present?
    @chans = @project.chans
  end

  # GET /chans/1 or /chans/1.json
  def show
    @channer = Channer.new
    @channers = @chan.channers
  end

  # GET /chans/new
  def new
    @project = Project.find(params[:project_id]) if params[:project_id].present?
    @chan = @project.chans.new
  end

  # GET /chans/1/edit
  def edit
  end

  # POST /chans or /chans.json
  def create
    @chan = Chan.new(chan_params)

    respond_to do |format|
      if @chan.save
        format.html { redirect_to project_chan_url(@chan.project,@chan), notice: "Chan was successfully created." }
        format.json { render :show, status: :created, location: @chan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chans/1 or /chans/1.json
  def update
    respond_to do |format|
      if @chan.update(chan_params)
        format.html { redirect_to project_chan_url(@chan.project,@chan), notice: "Chan was successfully updated." }
        format.json { render :show, status: :ok, location: @chan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chans/1 or /chans/1.json
  def destroy
    @chan.destroy
    @project = @chan.project
    respond_to do |format|
      format.html { redirect_to project_chans_url(@project), notice: "Chan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chan
      @chan = Chan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chan_params
      params.require(:chan).permit(:title, :project_id)
    end
end

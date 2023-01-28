class ChannersController < ApplicationController
  before_action :set_channer, only: %i[ show edit update destroy ]

  # GET /channers or /channers.json
  def index
    @channers = Channer.all
  end

  # GET /channers/1 or /channers/1.json
  def show
  end

  # GET /channers/new
  def new
    @channer = Channer.new
  end

  # GET /channers/1/edit
  def edit
  end

  # POST /channers or /channers.json
  def create
    @channer = Channer.new(channer_params)

    respond_to do |format|
      if @channer.save
        format.html { redirect_to project_chan_url(@channer.chan.project,@channer.chan) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @channer.destroy
    respond_to do |format|
      format.html { redirect_to project_chan_url(@channer.chan.project,@channer.chan) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channer
      @channer = Channer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def channer_params
      params.require(:channer).permit(:title, :chan_id, :user_id)
    end
end

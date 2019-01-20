class LpsController < ApplicationController
  before_action :set_lp, only: [:show, :edit, :update, :destroy]
  before_action :set_artist

  # GET /lps
  # GET /lps.json
  def index
    @lps = @artist.lps.all
  end

  # GET /lps/1
  # GET /lps/1.json
  def show
  end

  # GET /lps/new
  def new
    @lp = @artist.lps.new
  end

  # GET /lps/1/edit
  def edit
  end

  # POST /lps
  # POST /lps.json
  def create
    @lp = @artist.lps.new(lp_params)

    respond_to do |format|
      if @lp.save
        format.html { redirect_to artist_lps_url, notice: 'Lp was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /lps/1
  # PATCH/PUT /lps/1.json
  def update
    respond_to do |format|
      if @lp.update(lp_params)
        format.html { redirect_to artist_lps_url, notice: 'Lp was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /lps/1
  # DELETE /lps/1.json
  def destroy
    @lp.destroy
    respond_to do |format|
      format.html { redirect_to artist_lps_url, notice: 'Lp was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lp
      @lp = Lp.find(params[:id])
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lp_params
      params.require(:lp).permit(:name, :description, :artist_id)
    end
end

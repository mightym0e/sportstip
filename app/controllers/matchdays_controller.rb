class MatchdaysController < ApplicationController
  before_action :set_matchday, only: [:show, :edit, :update]

  # GET /matchdays
  # GET /matchdays.json
  def index
    games = Game.select("matchday").distinct
    @matchdays = games.sort_by { |game| game.matchday }
    @matchdays.each do |matchday|
      matchday.id = matchday.matchday
    end
  end

  # GET /matchdays/1
  # GET /matchdays/1.json
  def show
  end

  # GET /matchdays/1/edit
  def edit
  end

  # PATCH/PUT /matchdays/1
  # PATCH/PUT /matchdays/1.json
  def update
    respond_to do |format|
      if @matchday.update(matchday_params)
        format.html { redirect_to @matchday, notice: 'Matchday was successfully updated.' }
        format.json { render :show, status: :ok, location: @matchday }
      else
        format.html { render :edit }
        format.json { render json: @matchday.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matchday
      @matchday = Game.where("matchday = ?", params[:id])
      #binding.pry
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matchday_params
      params[:matchday]
    end
end

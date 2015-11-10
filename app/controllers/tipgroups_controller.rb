class TipgroupsController < ApplicationController
  before_action :set_tipgroup, only: [:show, :edit, :update, :destroy]

  # GET /tipgroups
  # GET /tipgroups.json
  def index
    @tipgroups = Tipgroup.all
  end

  # GET /tipgroups/1
  # GET /tipgroups/1.json
  def show
  end

  # GET /tipgroups/new
  def new
    @tipgroup = Tipgroup.new
  end

  # GET /tipgroups/1/edit
  def edit
  end

  # POST /tipgroups
  # POST /tipgroups.json
  def create
    @tipgroup = Tipgroup.new(tipgroup_params)

    respond_to do |format|
      if @tipgroup.save
        format.html { redirect_to @tipgroup, notice: 'Tipgroup was successfully created.' }
        format.json { render :show, status: :created, location: @tipgroup }
      else
        format.html { render :new }
        format.json { render json: @tipgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipgroups/1
  # PATCH/PUT /tipgroups/1.json
  def update
    respond_to do |format|
      if @tipgroup.update(tipgroup_params)
        format.html { redirect_to @tipgroup, notice: 'Tipgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipgroup }
      else
        format.html { render :edit }
        format.json { render json: @tipgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipgroups/1
  # DELETE /tipgroups/1.json
  def destroy
    @tipgroup.destroy
    respond_to do |format|
      format.html { redirect_to tipgroups_url, notice: 'Tipgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipgroup
      @tipgroup = Tipgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipgroup_params
      params.require(:tipgroup).permit(:name, :owner)
    end
end

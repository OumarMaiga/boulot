class CursusController < ApplicationController
  before_action :set_cursu, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /cursus
  # GET /cursus.json
  def index
    @cursus = Cursu.all
  end

  # GET /cursus/1
  # GET /cursus/1.json
  def show
  end

  # GET /cursus/new
  def new
    @cursu = Cursu.new
  end

  # GET /cursus/1/edit
  def edit
  end

  # POST /cursus
  # POST /cursus.json
  def create
    @cursu = Cursu.new(cursu_params)

    respond_to do |format|
      if @cursu.save
        format.html { redirect_to @cursu, notice: 'Cursu was successfully created.' }
        format.json { render :show, status: :created, location: @cursu }
      else
        format.html { render :new }
        format.json { render json: @cursu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursus/1
  # PATCH/PUT /cursus/1.json
  def update
    respond_to do |format|
      if @cursu.update(cursu_params)
        format.html { redirect_to @cursu, notice: 'Cursu was successfully updated.' }
        format.json { render :show, status: :ok, location: @cursu }
      else
        format.html { render :edit }
        format.json { render json: @cursu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursus/1
  # DELETE /cursus/1.json
  def destroy
    @cursu.destroy
    respond_to do |format|
      format.html { redirect_to cursus_url, notice: 'Cursu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursu
      @cursu = Cursu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cursu_params
      params.require(:cursu).permit(:ecole, :annee_debut, :annee_fin, :diplome, :user_id)
    end
end

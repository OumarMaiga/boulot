class PostulersController < ApplicationController
  before_action :set_postuler, only: [:show, :edit, :update, :destroy]

  # GET /postulers
  # GET /postulers.json
  def index
    @postulers = Postuler.all
  end

  # GET /postulers/1
  # GET /postulers/1.json
  def show
  end

  # GET /postulers/new
  def new
    @postuler = Postuler.new
  end

  # GET /postulers/1/edit
  def edit
  end

  # POST /postulers
  # POST /postulers.json
  def create
    @postuler = Postuler.new(postuler_params)

    respond_to do |format|
      if @postuler.save
        format.html { redirect_to @postuler, notice: 'Postuler was successfully created.' }
        format.json { render :show, status: :created, location: @postuler }
      else
        format.html { render :new }
        format.json { render json: @postuler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulers/1
  # PATCH/PUT /postulers/1.json
  def update
    respond_to do |format|
      if @postuler.update(postuler_params)
        format.html { redirect_to @postuler, notice: 'Postuler was successfully updated.' }
        format.json { render :show, status: :ok, location: @postuler }
      else
        format.html { render :edit }
        format.json { render json: @postuler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulers/1
  # DELETE /postulers/1.json
  def destroy
    @postuler.destroy
    respond_to do |format|
      format.html { redirect_to postulers_url, notice: 'Postuler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postuler
      @postuler = Postuler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postuler_params
      params.require(:postuler).permit(:user_id, :offre_id, :montant, :motivation)
    end
end

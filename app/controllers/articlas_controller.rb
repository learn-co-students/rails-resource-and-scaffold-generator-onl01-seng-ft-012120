class ArticlasController < ApplicationController
  before_action :set_articla, only: [:show, :edit, :update, :destroy]

  # GET /articlas
  # GET /articlas.json
  def index
    @articlas = Articla.all
  end

  # GET /articlas/1
  # GET /articlas/1.json
  def show
  end

  # GET /articlas/new
  def new
    @articla = Articla.new
  end

  # GET /articlas/1/edit
  def edit
  end

  # POST /articlas
  # POST /articlas.json
  def create
    @articla = Articla.new(articla_params)

    respond_to do |format|
      if @articla.save
        format.html { redirect_to @articla, notice: 'Articla was successfully created.' }
        format.json { render :show, status: :created, location: @articla }
      else
        format.html { render :new }
        format.json { render json: @articla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articlas/1
  # PATCH/PUT /articlas/1.json
  def update
    respond_to do |format|
      if @articla.update(articla_params)
        format.html { redirect_to @articla, notice: 'Articla was successfully updated.' }
        format.json { render :show, status: :ok, location: @articla }
      else
        format.html { render :edit }
        format.json { render json: @articla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articlas/1
  # DELETE /articlas/1.json
  def destroy
    @articla.destroy
    respond_to do |format|
      format.html { redirect_to articlas_url, notice: 'Articla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articla
      @articla = Articla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articla_params
      params.require(:articla).permit(:title, :body)
    end
end

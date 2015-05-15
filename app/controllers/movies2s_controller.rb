class Movies2sController < ApplicationController
  before_action :set_movies2, only: [:show, :edit, :update, :destroy]

  # GET /movies2s
  # GET /movies2s.json
  def index
    @movies2s = Movies2.all
  end

  # GET /movies2s/1
  # GET /movies2s/1.json
  def show
  end

  # GET /movies2s/new
  def new
    @movies2 = Movies2.new
  end

  # GET /movies2s/1/edit
  def edit
  end

  # POST /movies2s
  # POST /movies2s.json
  def create
    @movies2 = Movies2.new(movies2_params)

    respond_to do |format|
      if @movies2.save
        format.html { redirect_to @movies2, notice: 'Movies2 was successfully created.' }
        format.json { render :show, status: :created, location: @movies2 }
      else
        format.html { render :new }
        format.json { render json: @movies2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies2s/1
  # PATCH/PUT /movies2s/1.json
  def update
    respond_to do |format|
      if @movies2.update(movies2_params)
        format.html { redirect_to @movies2, notice: 'Movies2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @movies2 }
      else
        format.html { render :edit }
        format.json { render json: @movies2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies2s/1
  # DELETE /movies2s/1.json
  def destroy
    @movies2.destroy
    respond_to do |format|
      format.html { redirect_to movies2s_url, notice: 'Movies2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movies2
      @movies2 = Movies2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movies2_params
			params.require(:movies2).permit(:name, :description, :rating, :poster, :genre_id, :actor_id)
    end
end

class FitnessesController < ApplicationController
  before_action :set_fitness, only: [:show, :edit, :update, :destroy]

  # GET /fitnesses
  # GET /fitnesses.json
  def index
    @fitnesses = Fitness.all
  end

  # GET /fitnesses/1
  # GET /fitnesses/1.json
  def show
  end

  # GET /fitnesses/new
  def new
    @fitness =  current_user.fitnesses.build
  end

  # GET /fitnesses/1/edit
  def edit
  end

  # POST /fitnesses
  # POST /fitnesses.json
  def create
    @fitness =  current_user.fitnesses.build(fitness_params)

    respond_to do |format|
      if @fitness.save
        format.html { redirect_to @fitness, notice: 'Fitness was successfully created.' }
        format.json { render :show, status: :created, location: @fitness }
      else
        format.html { render :new }
        format.json { render json: @fitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitnesses/1
  # PATCH/PUT /fitnesses/1.json
  def update
    respond_to do |format|
      if @fitness.update(fitness_params)
        format.html { redirect_to @fitness, notice: 'Fitness was successfully updated.' }
        format.json { render :show, status: :ok, location: @fitness }
      else
        format.html { render :edit }
        format.json { render json: @fitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitnesses/1
  # DELETE /fitnesses/1.json
  def destroy
    @fitness.destroy
    respond_to do |format|
      format.html { redirect_to fitnesses_url, notice: 'Fitness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitness
      @fitness = Fitness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fitness_params
      params.require(:fitness).permit(:name, :address, :phone_number, :latitude, :longitude)
    end
end

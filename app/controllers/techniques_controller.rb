class TechniquesController < ApplicationController
  before_action :set_technique, only: [:show, :edit, :update, :destroy]

  # GET /functions
  # GET /functions.json
  def index
    @techniques = Technique.all
    #@q = Technique.search
    #@q = Function.ransack(params[:q])
    #@functions = @q.result

    #@technique = Technique.new
    @technique = Search::Technique.new
    @techniques = @technique
                      .matches
    #@technique = @technique.
  end

  # GET /functions/1
  # GET /functions/1.json
  def show
    #@parts = Part.find_by(id: @technique.part_id)
    @parts = Part.find(@technique.part_id)
  end

  # GET /functions/new
  def new
    @technique = Technique.new
  end

  # GET /functions/1/edit
  def edit
  end

  #search
  #def search
  #  @q = Technique.search(params[:q])
  #  @techniques = @q
        #.result
        #.order(availability: :desc, code: :asc)
        #.decorate
  #end

  def search
    @technique = Search::Technique.new(search_params)
    @techniques = @technique
                     .matches
    #.order(availability: :desc, code: :asc)
    #.decorate
  end

  # POST /functions
  # POST /functions.json
  def create
    @technique = Technique.new(technique_params)

    respond_to do |format|
      if @technique.save
        format.html { redirect_to @technique, notice: 'Function was successfully created.' }
        format.json { render :show, status: :created, location: @technique }
      else
        format.html { render :new }
        format.json { render json: @technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /functions/1
  # PATCH/PUT /functions/1.json
  def update
    respond_to do |format|
      if @technique.update(technique_params)
        format.html { redirect_to @technique, notice: 'Function was successfully updated.' }
        format.json { render :show, status: :ok, location: @technique }
      else
        format.html { render :edit }
        format.json { render json: @technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /functions/1
  # DELETE /functions/1.json
  def destroy
    @technique.destroy
    respond_to do |format|
      format.html { redirect_to techniques_url, notice: 'Function was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technique
      @technique = Technique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technique_params
      #params.require(:technique).permit(:name, :function_id, :part_id, :note, :adv_text, :sh_text)

      params.fetch(:technique, {})
      params.require(:technique).permit(:name, :function_id, :part_id, :note, :adv_text, :sh_text)
    end

    def search_params
      #search_conditions = %i(
      #  purpose1
      #)
      #params.require(:q).permit(search_conditions)
      params
          .require(:search_technique)
          .permit(Search::Technique::ATTRIBUTES)
    end
end

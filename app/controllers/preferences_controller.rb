class PreferencesController < ApplicationController
  before_action :set_preference, only: [:show, :edit, :update, :destroy]

  # GET /preferences
  # GET /preferences.json
  def index
    @preferences = Preference.all
  end

  # GET /preferences/1
  # GET /preferences/1.json
  def show
  end

  # GET /preferences/new
  def new
    @preference = Preference.new
    @categories = Category.all
  end

  # GET /preferences/1/edit
  def edit
  end

  # POST /preferences
  # POST /preferences.json
  def create
    byebug

    require 'json'
    teste = JSON.parse(params)

    params[:category_ids].each_with_index do |id, index|
      category = Category.find(category_id)
      current_user.preferences.create(category: category, position: index + 1)
    end

    # respond_to do |format|
    #   if @preference.save
    #     format.html { redirect_to @preference, notice: 'Preference was successfully created.' }
    #     format.json { render :show, status: :created, location: @preference }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @preference.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /preferences/1
  # PATCH/PUT /preferences/1.json
  def update
    respond_to do |format|
      if @preference.update(preference_params)
        format.html { redirect_to @preference, notice: 'Preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @preference }
      else
        format.html { render :edit }
        format.json { render json: @preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preferences/1
  # DELETE /preferences/1.json
  def destroy
    @preference.destroy
    respond_to do |format|
      format.html { redirect_to preferences_url, notice: 'Preference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preference
      @preference = Preference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preference_params
      params.require(:preference).permit(:user_id, :category_id)
    end
end

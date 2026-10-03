class ScenesController < ApplicationController
  before_action :set_scene, only: %i[ show edit update destroy ]

  # GET /scenes or /scenes.json
  def index
    @scenes = Scene.all
  end

  # GET /scenes/1 or /scenes/1.json
  def show
    @socialmediapost=Socialmediapost.new(scene_id: @scene.id)
  end

  # GET /scenes/new
  def new
    @scene = Scene.new

  end

  # GET /scenes/1/edit
  def edit
  end

  # POST /scenes or /scenes.json
  def create
    @scene = Scene.new(scene_params)

    respond_to do |format|
      if @scene.save
        format.html { redirect_to @scene, notice: "Scene was successfully created." }
        format.json { render :show, status: :created, location: @scene }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @scene.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /scenes/1 or /scenes/1.json
  def update
    respond_to do |format|
      if @scene.update(scene_params)
        format.html { redirect_to @scene, notice: "Scene was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @scene }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @scene.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /scenes/1 or /scenes/1.json
  def destroy
    @scene.destroy!

    respond_to do |format|
      format.html { redirect_to scenes_path, notice: "Scene was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scene
      @scene = Scene.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def scene_params
      params.expect(scene: [ :text, :chapter_id, :character_ids=> [] ])
    end
end

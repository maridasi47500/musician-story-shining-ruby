class MusicpostsController < ApplicationController
  before_action :set_musicpost, only: %i[ show edit update destroy ]

  # GET /musicposts or /musicposts.json
  def index
    @musicposts = Musicpost.all
  end

  # GET /musicposts/1 or /musicposts/1.json
  def show
  end

  # GET /musicposts/new
  def new
    @musicpost = Musicpost.new
  end

  # GET /musicposts/1/edit
  def edit
  end

  # POST /musicposts or /musicposts.json
  def create
    @musicpost = Musicpost.new(musicpost_params)

    respond_to do |format|
      if @musicpost.save
        format.html { redirect_to @musicpost, notice: "Musicpost was successfully created." }
        format.json { render :show, status: :created, location: @musicpost }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @musicpost.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /musicposts/1 or /musicposts/1.json
  def update
    respond_to do |format|
      if @musicpost.update(musicpost_params)
        format.html { redirect_to @musicpost, notice: "Musicpost was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @musicpost }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @musicpost.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /musicposts/1 or /musicposts/1.json
  def destroy
    @musicpost.destroy!

    respond_to do |format|
      format.html { redirect_to musicposts_path, notice: "Musicpost was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicpost
      @musicpost = Musicpost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def musicpost_params
      params.expect(musicpost: [ :scene_id, :description_story, :description_music, :composer, :artist, :title, :music ])
    end
end

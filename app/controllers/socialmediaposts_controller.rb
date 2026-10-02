class SocialmediapostsController < ApplicationController
  before_action :set_socialmediapost, only: %i[ show edit update destroy ]

  # GET /socialmediaposts or /socialmediaposts.json
  def index
    @socialmediaposts = Socialmediapost.all
  end

  # GET /socialmediaposts/1 or /socialmediaposts/1.json
  def show
  end

  # GET /socialmediaposts/new
  def new
    @socialmediapost = Socialmediapost.new
  end

  # GET /socialmediaposts/1/edit
  def edit
  end

  # POST /socialmediaposts or /socialmediaposts.json
  def create
    @socialmediapost = Socialmediapost.new(socialmediapost_params)

    respond_to do |format|
      if @socialmediapost.save
        format.html { redirect_to @socialmediapost, notice: "Socialmediapost was successfully created." }
        format.json { render :show, status: :created, location: @socialmediapost }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @socialmediapost.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /socialmediaposts/1 or /socialmediaposts/1.json
  def update
    respond_to do |format|
      if @socialmediapost.update(socialmediapost_params)
        format.html { redirect_to @socialmediapost, notice: "Socialmediapost was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @socialmediapost }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @socialmediapost.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /socialmediaposts/1 or /socialmediaposts/1.json
  def destroy
    @socialmediapost.destroy!

    respond_to do |format|
      format.html { redirect_to socialmediaposts_path, notice: "Socialmediapost was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socialmediapost
      @socialmediapost = Socialmediapost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def socialmediapost_params
      params.expect(socialmediapost: [ :scene_id, :description_story, :description_pic, :content, :pic, :socialmedia_name ])
    end
end

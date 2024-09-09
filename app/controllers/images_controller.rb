class ImagesController < ApplicationController
  before_action :set_image, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :correct_user,only: [:index,:show,:edit,:update,:destroy]
  # GET /images or /images.json
  def index
    @images = Image.order(created_at: :desc)
  end

  # GET /images/1 or /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = current_user.images.build
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images or /images.json
  def create
    @image = current_user.images.build(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to root_path(@image), notice: "Image was successfully created." }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1 or /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to image_url(@image), notice: "Image was successfully updated." }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1 or /images/1.json
  def destroy
    @image.destroy!

    respond_to do |format|
      format.html { redirect_to images_url, notice: "Image was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    # @post = current_user.posts.find_by(id: params[:id])
    # redirect_to posts_url,notice: "Not Authorized to edit this Friend" if@post.nil?
  end

  def search
    
    @tag = params[:tag]
    #@tag = current_user.images.tagged_with(params[:tag])
    @search_results = Image.tagged_with(@tag) if @tag.present?
  
    if @search_results.blank?
      raise ActiveRecord::RecordNotFound, "No ImageLink records found with tag: '#{@tag}'"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:image).permit(:image, :tag_list, :description,:user_id)
    end
end

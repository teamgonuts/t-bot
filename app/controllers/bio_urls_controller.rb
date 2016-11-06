class BioUrlsController < ApplicationController
  before_action :set_bio_url, only: [:show, :edit, :update, :destroy]

  # GET /bio_urls
  # GET /bio_urls.json
  def index
    @bio_urls = BioUrl.all
  end

  # GET /bio_urls/1
  # GET /bio_urls/1.json
  def show
  end

  # GET /bio_urls/new
  def new
    @bio_url = BioUrl.new
  end

  # GET /bio_urls/1/edit
  def edit
  end

  # POST /bio_urls
  # POST /bio_urls.json
  def create
    @bio_url = BioUrl.new(bio_url_params)

    respond_to do |format|
      if @bio_url.save
        format.html { redirect_to @bio_url, notice: 'Bio url was successfully created.' }
        format.json { render :show, status: :created, location: @bio_url }
      else
        format.html { render :new }
        format.json { render json: @bio_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bio_urls/1
  # PATCH/PUT /bio_urls/1.json
  def update
    respond_to do |format|
      if @bio_url.update(bio_url_params)
        format.html { redirect_to @bio_url, notice: 'Bio url was successfully updated.' }
        format.json { render :show, status: :ok, location: @bio_url }
      else
        format.html { render :edit }
        format.json { render json: @bio_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bio_urls/1
  # DELETE /bio_urls/1.json
  def destroy
    @bio_url.destroy
    respond_to do |format|
      format.html { redirect_to bio_urls_url, notice: 'Bio url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bio_url
      @bio_url = BioUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bio_url_params
      params.fetch(:bio_url, {})
    end
end

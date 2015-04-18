class TranslatedFilesController < ApplicationController
  before_action :set_translated_file, only: [:show, :edit, :update, :destroy]

  # GET /translated_files
  # GET /translated_files.json
  def index
    @translated_files = TranslatedFile.all
  end

  # GET /translated_files/1
  # GET /translated_files/1.json
  def show
  end

  # GET /translated_files/new
  def new
    @translated_file = TranslatedFile.new
  end

  # GET /translated_files/1/edit
  def edit
  end

  # POST /translated_files
  # POST /translated_files.json
  def create
    @translated_file = TranslatedFile.new(translated_file_params)

    respond_to do |format|
      if @translated_file.save
        format.html { redirect_to @translated_file, notice: 'Translated file was successfully created.' }
        format.json { render :show, status: :created, location: @translated_file }
      else
        format.html { render :new }
        format.json { render json: @translated_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translated_files/1
  # PATCH/PUT /translated_files/1.json
  def update
    respond_to do |format|
      if @translated_file.update(translated_file_params)
        format.html { redirect_to @translated_file, notice: 'Translated file was successfully updated.' }
        format.json { render :show, status: :ok, location: @translated_file }
      else
        format.html { render :edit }
        format.json { render json: @translated_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translated_files/1
  # DELETE /translated_files/1.json
  def destroy
    @translated_file.destroy
    respond_to do |format|
      format.html { redirect_to translated_files_url, notice: 'Translated file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translated_file
      @translated_file = TranslatedFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translated_file_params
      params.require(:translated_file).permit(:translation_file_id, :name)
    end
end

class LastEditorsController < ApplicationController
  before_action :set_last_editor, only: [:show, :edit, :update, :destroy]

  # GET /last_editors
  # GET /last_editors.json
  def index
    @last_editors = LastEditor.all
  end

  # GET /last_editors/1
  # GET /last_editors/1.json
  def show
  end

  # GET /last_editors/new
  def new
    @last_editor = LastEditor.new
  end

  # GET /last_editors/1/edit
  def edit
  end

  # POST /last_editors
  # POST /last_editors.json
  def create
    @last_editor = LastEditor.new(last_editor_params)

    respond_to do |format|
      if @last_editor.save
        format.html { redirect_to @last_editor, notice: 'Last editor was successfully created.' }
        format.json { render :show, status: :created, location: @last_editor }
      else
        format.html { render :new }
        format.json { render json: @last_editor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /last_editors/1
  # PATCH/PUT /last_editors/1.json
  def update
    respond_to do |format|
      if @last_editor.update(last_editor_params)
        format.html { redirect_to @last_editor, notice: 'Last editor was successfully updated.' }
        format.json { render :show, status: :ok, location: @last_editor }
      else
        format.html { render :edit }
        format.json { render json: @last_editor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /last_editors/1
  # DELETE /last_editors/1.json
  def destroy
    @last_editor.destroy
    respond_to do |format|
      format.html { redirect_to last_editors_url, notice: 'Last editor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_last_editor
      @last_editor = LastEditor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def last_editor_params
      params.require(:last_editor).permit(:user_id, :article_id)
    end
end

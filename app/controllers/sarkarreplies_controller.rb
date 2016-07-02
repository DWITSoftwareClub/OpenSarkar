class SarkarrepliesController < ApplicationController
  before_action :set_sarkarreply, only: [:show, :edit, :update, :destroy]

  # GET /sarkarreplies
  # GET /sarkarreplies.json
  def index
    @sarkarreplies = Sarkarreply.all
  end

  # GET /sarkarreplies/1
  # GET /sarkarreplies/1.json
  def show
  end

  # GET /sarkarreplies/new
  def new
    @sarkarreply = Sarkarreply.new
  end

  # GET /sarkarreplies/1/edit
  def edit
  end

  # POST /sarkarreplies
  # POST /sarkarreplies.json
  def create
    @sarkarreply = Sarkarreply.new(sarkarreply_params)

    respond_to do |format|
      if @sarkarreply.save
        format.html { redirect_to @sarkarreply, notice: 'Sarkarreply was successfully created.' }
        format.json { render :show, status: :created, location: @sarkarreply }
      else
        format.html { render :new }
        format.json { render json: @sarkarreply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sarkarreplies/1
  # PATCH/PUT /sarkarreplies/1.json
  def update
    respond_to do |format|
      if @sarkarreply.update(sarkarreply_params)
        format.html { redirect_to @sarkarreply, notice: 'Sarkarreply was successfully updated.' }
        format.json { render :show, status: :ok, location: @sarkarreply }
      else
        format.html { render :edit }
        format.json { render json: @sarkarreply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sarkarreplies/1
  # DELETE /sarkarreplies/1.json
  def destroy
    @sarkarreply.destroy
    respond_to do |format|
      format.html { redirect_to sarkarreplies_url, notice: 'Sarkarreply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sarkarreply
      @sarkarreply = Sarkarreply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sarkarreply_params
      params.require(:sarkarreply).permit(:reply)
    end
end

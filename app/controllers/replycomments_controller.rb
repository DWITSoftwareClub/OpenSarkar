class ReplycommentsController < ApplicationController
  before_action :set_replycomment, only: [:show, :edit, :update, :destroy]

  # GET /replycomments
  # GET /replycomments.json
  def index
    @replycomments = Replycomment.all
  end

  # GET /replycomments/1
  # GET /replycomments/1.json
  def show
  end

  # GET /replycomments/new
  def new
    @replycomment = Replycomment.new
  end

  # GET /replycomments/1/edit
  def edit
  end

  # POST /replycomments
  # POST /replycomments.json
  def create
    @replycomment = Replycomment.new(replycomment_params)

    respond_to do |format|
      if @replycomment.save
        format.html { redirect_to @replycomment, notice: 'Replycomment was successfully created.' }
        format.json { render :show, status: :created, location: @replycomment }
      else
        format.html { render :new }
        format.json { render json: @replycomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replycomments/1
  # PATCH/PUT /replycomments/1.json
  def update
    respond_to do |format|
      if @replycomment.update(replycomment_params)
        format.html { redirect_to @replycomment, notice: 'Replycomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @replycomment }
      else
        format.html { render :edit }
        format.json { render json: @replycomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replycomments/1
  # DELETE /replycomments/1.json
  def destroy
    @replycomment.destroy
    respond_to do |format|
      format.html { redirect_to replycomments_url, notice: 'Replycomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_replycomment
      @replycomment = Replycomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def replycomment_params
      params.require(:replycomment).permit(:comment)
    end
end

class GroupCzarsController < ApplicationController
  before_action :set_group_czar, only: [:show, :edit, :update, :destroy]

  # GET /group_czars
  # GET /group_czars.json
  def index
    @group_czars = GroupCzar.all
  end

  # GET /group_czars/1
  # GET /group_czars/1.json
  def show
  end

  # GET /group_czars/new
  def new
    @group_czar = GroupCzar.new
  end

  # GET /group_czars/1/edit
  def edit
  end

  # POST /group_czars
  # POST /group_czars.json
  def create
    @group_czar = GroupCzar.new(group_czar_params)

    respond_to do |format|
      if @group_czar.save
        format.html { redirect_to @group_czar, notice: 'Group czar was successfully created.' }
        format.json { render :show, status: :created, location: @group_czar }
      else
        format.html { render :new }
        format.json { render json: @group_czar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_czars/1
  # PATCH/PUT /group_czars/1.json
  def update
    respond_to do |format|
      if @group_czar.update(group_czar_params)
        format.html { redirect_to @group_czar, notice: 'Group czar was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_czar }
      else
        format.html { render :edit }
        format.json { render json: @group_czar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_czars/1
  # DELETE /group_czars/1.json
  def destroy
    @group_czar.destroy
    respond_to do |format|
      format.html { redirect_to group_czars_url, notice: 'Group czar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_czar
      @group_czar = GroupCzar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_czar_params
      params.require(:group_czar).permit(:group_id, :user_id, :czar_count)
    end
end

class GroupRsvpsController < ApplicationController
  before_action :set_group_rsvp, only: [:show, :edit, :update, :destroy]

  # GET /group_rsvps
  # GET /group_rsvps.json
  def index
    @group_rsvps = GroupRsvp.all
  end

  # GET /group_rsvps/1
  # GET /group_rsvps/1.json
  def show
  end

  # GET /group_rsvps/new
  def new
    @group_rsvp = GroupRsvp.new
  end

  # GET /group_rsvps/1/edit
  def edit
  end

  # POST /group_rsvps
  # POST /group_rsvps.json
  def create
    @group_rsvp = GroupRsvp.new(group_rsvp_params)

    respond_to do |format|
      if @group_rsvp.save
        format.html { redirect_to @group_rsvp, notice: 'Group rsvp was successfully created.' }
        format.json { render :show, status: :created, location: @group_rsvp }
      else
        format.html { render :new }
        format.json { render json: @group_rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_rsvps/1
  # PATCH/PUT /group_rsvps/1.json
  def update
    respond_to do |format|
      if @group_rsvp.update(group_rsvp_params)
        format.html { redirect_to @group_rsvp, notice: 'Group rsvp was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_rsvp }
      else
        format.html { render :edit }
        format.json { render json: @group_rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_rsvps/1
  # DELETE /group_rsvps/1.json
  def destroy
    @group_rsvp.destroy
    respond_to do |format|
      format.html { redirect_to group_rsvps_url, notice: 'Group rsvp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_rsvp
      @group_rsvp = GroupRsvp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_rsvp_params
      params.require(:group_rsvp).permit(:group_id, :user_id, :accecpted)
    end
end

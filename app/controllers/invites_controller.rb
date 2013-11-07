class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]

  def index
    @invites = Invite.where(:event_id => params[:event_id]).all
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
  end

  # GET /invites/new
  def new
    @event = Event.find(params[:event_id])
    @invite = @event.invites.build
    @guests = User.all
  end

  def create
    @invite = Invite.new(invite_params)

    respond_to do |format|
      if @invite.save
        @event = @invite.event
        format.html { redirect_to @event, notice: 'Invite was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    invite_params = params[:invite]
    @event = @invite.event
    if invite_params[:accepted] == "true"
      @invite.accept!
    elsif invite_params[:accepted] == "false"
      @invite.decline!
    end
    redirect_to @event, notice: 'Invite was successfully updated.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invite_params
      params.require(:invite).permit(:event_id, :accepted, :guest_id)
    end
end

class TracksController < ApplicationController
  before_action :set_track, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, except: [:update, :create, :destroy]

  # GET /tracks
  def index
    @tracks = Track.all

    render json: @tracks, include: ['likes']
  end

  # GET /tracks/1
  def show
    render json: @track, include: ['comments', 'comments.user']
  end

  # POST /tracks
  def create
    @track = Track.new(track_params)
    @track.user = current_user

    if @track.save
      render json: @track, status: :created, location: @track
    else
      render json: @track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tracks/1
  def update
    if @track.update(track_params)
      render json: @track
    else
      render json: @track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tracks/1
  def destroy
    if @track.user == current_user || !@track.user
      @track.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def track_params
      params.require(:track).permit(:title, :artist, :url, :user_id, like_ids:[])
    end
end

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

    if track_params[:embed_code]
      track_params[:embed_code].match(%r{tracks/([0-9]+)})
      track_params[:soundcloud_id] = $1
      track_params.delete(:embed_code)
    end

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

    track_data = track_params

    if track_data[:embed_code]
      track_data[:embed_code].match(%r{tracks/([0-9]+)})
      track_data[:soundcloud_id] = $1
      track_data.delete(:embed_code)
    end

    if @track.user == current_user || !@track.user
      if @track.update(track_data)
        render json: @track
      else
        render json: @track.errors, status: :unprocessable_entity
      end
    else
      render json: { errors: ["Unauthorized"] }, status: 401
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
    params.permit(:title, :artist, :url, :user_id, :embed_code, :soundcloud_id, like_ids:[], )
  end
end

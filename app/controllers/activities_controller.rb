class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @activity, notice: "Activité créée avec succès."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to @activity, notice: "Activité mise à jour."
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to activities_path, notice: "Activité supprimée."
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :distance, :image_url)
  end
end

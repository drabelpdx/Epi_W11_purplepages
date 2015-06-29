class TypesController < ApplicationController
  def index
    @types = Type.all
    render :index
  end

  def show
  @type = Type.find(params[:id])
  @businesses = @type.businesses
  render :show
end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to types_path
    else
      render :new
    end
  end

  private

  def type_params
    params.require(:type).permit(:name)
  end
end

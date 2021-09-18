class CustomizesController < ApplicationController
  def index
    #トップページ
  end
 
  def new
    #ログインユーザーがcustomizeを持っている場合はそれを表示させたい
    @customize = Customize.new
    5.times{ @customize.details.build}
  end

  def create
   @customize = Customize.new(customize_params)
    if @customize.save
      #redirect_to customizes_path
    else
      render :new
    end

  end

  def show
    @customize = Customize.find(params[:id])
    get_detail
  end
  
  private

  def customize_params
    #binding.pry
    params.require(:customize).permit(:theme,details_attributes:[:detail]).merge(user_id: current_user.id)
  end

  def get_detail
    #binding.pry
    details = []
    details = Detail.where(customize_id: params[:id]).pluck(:detail)
    binding.pry
    @detail = details.sample(1)
  end

end

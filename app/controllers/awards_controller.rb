class AwardsController < ApplicationController

  def index
    @award = Award.new
    @awards = Award.all
  end

  def create
    @award = Award.new(award_params)
    @award.save
    redirect_to awards_path
  end

  private
    def award_params
      params.require(:award).permit(:title)
    end


end


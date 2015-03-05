class ProfileController < ApplicationController
  def index

  end


  def new
    @profile=Profile.new(profile_params)
    @profile.save
    redirect_to profile_index_path
  end

  def offer

  end

  def checkAnswer
  end

  def checkTheOwn
  end

  def outButton
  end

  def comeButton
  end

  def logOut
  end

  def checkPartner
  end

  private
  def profile_params
    params.require(:profile).permit(:type, :description)
  end
end

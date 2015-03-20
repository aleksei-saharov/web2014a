class ProfileController < ApplicationController
  def index

  end


  def new
    @profile=Profile.new(profile_params)
    @profile.save
    redirect_to profile_index_path
  end

  def desire

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
    params.require(:profile).permit(:cause, :description)
  end
end

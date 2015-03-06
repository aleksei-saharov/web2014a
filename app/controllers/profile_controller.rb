class ProfileController < ApplicationController
  def index

  end


  def new
    @desire=Desire.new(profile_params)
    @desire.save
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
    params.require(:desire).permit(:cause, :description)
  end
end

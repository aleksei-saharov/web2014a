class ProfileController < ApplicationController
  before_action :authenticate_user!

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
    @timing=ScheduleDayOfficials.new
    @timing.arrival=Time.now
    @timing.id=User.where('email'=> current_user.email)[0]['id']
    @timing.save
  end

  def logIn
    @cookie=Cookie.new(cookie_params)
    #@cookie.hash=SecureRandom.hex(@cookie.id)
    redirect_to profile_index_path
  end

  def logOut

  end

  def checkPartner
  end

  private
  def profile_params
    params.require(:profile).permit(:cause, :description)
  end
  def come_params
    @arrival=Time.now
  end
end

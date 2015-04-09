class ProfileController < ApplicationController
  before_action :authenticate_user!

  $flag=true

  def index
    #$user_ids=User.where('email'=> current_user.email)[]['id']
    #if @flag.nil?
        #@flag=true
    #else
      #@flag=false
    #end
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

  def goDinner

  end

  def comeDinner
    redirect_to profile_index_path
  end

  def outButton
    $flag=true
    @a=User.where('email'=> current_user.email)[0]['id']
    @array_of_id=TimeInterval.where(user_id: @a).pluck(:id)
    # SELECT id FROM time_intervals WHERE user_id = @a
    @max_id=@array_of_id.compact.max
    @user=TimeInterval.find_by_id(@max_id)
    @user.departure=Time.now
    @user.save

    redirect_to profile_index_path

    #@user=TimeInterval.find_by_sql("SELECT max(id) FROM time_intervals WHERE user_id=#{@a}")
    #redirect_to destroy_user_session_path
    #TimeInterval.create(:departure => Time.now, :user_id => @a)
    #Users.new(:username => "Hello", :role => "Admin"
    #@timing.user_id=User.where('email'=> current_user.email)[0]['id']
    #@timing.departure=Time.now

    #@timing.save
  end

  def comeButton
    $flag=false
    @timing=TimeInterval.new
    @timing.arrival=Time.now
    @timing.user_id=User.where('email'=> current_user.email)[0]['id']



    @timing.save
    #$max_id=TimeInterval.maximum("id")
    redirect_to profile_index_path
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

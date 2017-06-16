class Devise::OmniauthCallbacksController < DeviseController

  def github
    # binding.pry
    # @user = sing_in? ? current_user : User.find_or_initialize_by(email: user_info[:email])
    create_provider_session
  end

  def facebook
    binding.pry
    create_provider_session
  end

  private

  def create_provider_session
    @user = User.find_or_initialize_by(email: user_info[:email])

    @user.auth_providers.find_or_initialize_by(uid: auth_hash[:uid],
                                               provider: auth_hash[:provider])


    @user.full_name = user_info[:name]
    @user.email = user_info[:email]
    @user.avatar = user_avatar
    @user.save

    sign_in(@user)
    redirect_to root_path, notice: 'Welcome from FB'
  end

  def auth_hash
    request.env['omniauth.auth']
  end

  def user_info
    auth_hash[:info]
  end

  def user_avatar
    # http://graph.facebook.com/v2.6/1643491799012706/picture
    path = Rails.root + '/tmp/' + auth_hash[:uid]
    `wget #{user_info[:image]} -O #{path}`
    File.open(path)
  end
end
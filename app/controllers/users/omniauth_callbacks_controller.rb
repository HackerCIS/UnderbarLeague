# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def google_oauth2
    # 구글에서 넘겨주는 정보를 auth라는 변수에 담는다.
    auth = request.env['omniauth.auth']
    # 구글 사용자 정보에서 email과 name을 가져온다. 
    email = auth["info"]["email"]
    name = auth["info"]["name"]
    # 기존에 가입했는지 email 기반으로 찾는다.
    @user = User.find_by(email: email)
    # 기존에 가입하지 않았다면
    unless @user.present?
      # 가상의 pw를 만들고
      pw = SecureRandom.hex(5)
      # 회원 가입을 시킨다.
      @user = User.create(email: email, name: name, password: pw, password_confirmation: pw)
    end
    # 로그인
    sign_in @user
    # 처음 페이지로 이동
    redirect_to root_path
  end
  
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end

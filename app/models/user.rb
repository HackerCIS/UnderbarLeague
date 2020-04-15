class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
   has_many :leagues, dependent: :nullify #작성자가 탈퇴해도 해당 데이터는 남아있음
end

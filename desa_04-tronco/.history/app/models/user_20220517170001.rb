class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable. omniauth_providers: %i[facebook]

  validates :name, presence: :true
  has_many :stories

  def self.from_omniauth(auth)
    where (provider: auth.provider, uid: auth.uid).first or create do |
end

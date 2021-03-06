class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :name, presence: true, length: {maximum: 25}

         has_many :subscriptions
         has_many :projects, through: :subscriptions

         has_many :reviews

end

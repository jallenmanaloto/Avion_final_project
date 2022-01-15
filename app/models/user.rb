class User < ApplicationRecord
        include DeviseTokenAuth::Concerns::User
                # Include default devise modules.
                devise :database_authenticatable, :registerable,
                        :recoverable, :rememberable, :validatable
        # Include default devise modules. Others available are:
        # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
        validates :last_name, :first_name, :middle_name, :email, presence: true
        validates :email, uniqueness: true

        has_many :requests
        has_many :activities
        has_and_belongs_to_many :establishments
end

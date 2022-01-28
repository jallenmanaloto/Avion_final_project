class User < ApplicationRecord
        after_create :skip_confirmation
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
        has_many :appointments
        has_many :items
        has_and_belongs_to_many :establishments

        def skip_confirmation
                self.skip_confirmation!
                self.confirm!
        end
end

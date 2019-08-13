class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :welcome_send
  has_many :attendances, foreign_key: "noob", class_name: "Attendance"
  has_many :events, through: :attendances, foreign_key: "noob", class_name: "Attendance"
  has_many :events, foreign_key: "administrator", class_name: "Event"
  has_many :noobs, foreign_key: "noob_id", class_name: "Attendance"
  has_many :administrators, foreign_key: 'administrator_id', class_name: "Attendance"






  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end

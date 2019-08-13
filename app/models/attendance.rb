class Attendance < ApplicationRecord
  belongs_to :noob, class_name: "User"
  belongs_to :event







end

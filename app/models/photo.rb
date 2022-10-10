# == Schema Information
#
# Table name: photos
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  file_location :string
#  type          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Photo < ApplicationRecord
  mount_uploader :file_location, PhotoUploader
  # validates_presence_of :title, :date, :description, :file_location
end

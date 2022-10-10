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
class BigItem < Photo

end

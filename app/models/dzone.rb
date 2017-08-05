class Dzone < ApplicationRecord
  mount_uploader :picture, AvatarUploader
  #mount_uploaders :picture, AvatarUploader
  #serialize :picture, JSON # MariaDB 10.1 doesn't support column data type in json.
end

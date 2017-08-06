class Multidzone < ApplicationRecord
  mount_uploaders :pictures, AvatarUploader
  serialize :pictures, JSON # MariaDB 10.1 doesn't support column data type in json.
end

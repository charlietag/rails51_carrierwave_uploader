class Doll < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end

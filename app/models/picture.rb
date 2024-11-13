class Picture < ApplicationRecord
  mount_uploader :file, FileUploader
end

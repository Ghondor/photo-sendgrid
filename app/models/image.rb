class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :pictue, PictureUploader
  validate :picture_size

  private
  def picture_size
    if pictue.size > 5.megabytes
      errors.add(:picture, 'Should be less than 5MB.')
    end
  end
end

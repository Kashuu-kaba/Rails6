class List < ApplicationRecord
  has_one_attached :image

  validates :title, presence:true
  validates :body, presence:true
  validates :image_type, presence:true

  private

  def image_type
    if !image.blob.content_type.in?(%('image/jpeg image/png'))
      image.purge # Rails6では、この1行は必要ない
      errors.add(:image, 'はJPEGまたはPNG形式を選択してアップロードしてください')
    end
  end

end

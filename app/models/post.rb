class Post < ApplicationRecord
    has_one_attached :image
    validate :image_type

    belongs_to :user

    private

    def image_type
        if image.attached? == false
            errors.add(:image, "画像が選択されていません")
        end
        #if !image.content_type.in?(%('image/jpeg image/png'))
        #    errors.add(:image, "needs to be a jpeg or png!")
        #end
    end
end

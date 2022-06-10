class Oenologist < ApplicationRecord
    has_many :oenologist_magazines
    has_many :magazines, through: :oenologist_magazines, dependent: :destroy
    accepts_nested_attributes_for :oenologist_magazines, reject_if: :all_blank, allow_destroy: true
    has_many :wine_oenologists
    has_many :wines, through: :wine_oenologists, dependent: :destroy
end

class Book < ApplicationRecord
	belongs_to :user
	has_many :favorites
	has_many :post_comments
	#バリデーションは該当するモデルに設定する。エラーにする条件を設定できる。
	#presence trueは空欄の場合を意味する。
	validates :title, presence: true
	validates :title, presence: {message: "error"}

	validates :body, presence: true, length: {maximum: 200}
	validates :body, presence: {message: "error"}

	def favorited_by?(user)
		self.favorites.where(user_id: user.id).exists?
	end
end
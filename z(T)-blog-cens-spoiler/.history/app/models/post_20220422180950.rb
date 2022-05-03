class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save :censurar

    def censurar

        preContent = self.title.split(" ")
        postContent = []
        arr_Content.each do |word| 
            postContent << word.gsub(/spoiler/i, '*******')
        end 
        self.title = postContent.join(" ")

        arr_Content = self.content.split(" ")
        postContent = []
        arr_Content.each do |word| 
            postContent << word.gsub(/spoiler/i, '*******')
        end 
        self.content = postContent.join(" ")

        self.image_url = self.image_url.downcase.gsub('spoiler', '*******')

    end
end

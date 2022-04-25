class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save :censurar

    def censurar

        preContent = self.title.split(" ")
        postContent = []
        preContent.each do |word| 
            postContent << word.gsub(/spoiler/i, '*******')
        end 
        self.title = postContent.join(" ")

        preContent = self.content.split(" ")
        postContent = []
        preContent.each do |word| 
            postContent << word.gsub(/spoiler/i, '*******')
        end 
        self.content = postContent.join(" ")

    end
end

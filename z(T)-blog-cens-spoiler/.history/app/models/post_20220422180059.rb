class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save :censurar
    def censurar
        self.title = self.title.downcase.gsub('spoiler', 's*****r')
        self.image_url = self.image_url.downcase.gsub('spoiler', 's*****r')


        arr_Content = self.content.split(" ")
        postContent = []
        arr_Content.each do |word| 
            postContent << word.gsub(/spoiler/i, "****")
        end 
        self.content = postContent.join(" ")

        arr_Content = self.content.split(" ")
        postContent = []
        arr_Content.each do |word| 
            postContent << word.gsub(/spoiler/i, "****")
        end 
        self.content = postContent.join(" ")

    end
end

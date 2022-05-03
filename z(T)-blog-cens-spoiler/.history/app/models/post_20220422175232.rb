class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true
    before_save :censurar
    def censurar
        self.title = self.title.downcase.gsub('spoiler', 's*****r')
        self.image_url = self.image_url.downcase.gsub('spoiler', 's*****r')
        self.content = self.content.downcase.gsub('spoiler', 's*****r')

                preContent = self.content
                arr_Content = preContent.split(" ")
                system 'clear'
                puts "arr_Content #{arr_Content}"

                postContent = []

                arr_Content.each do |word| 
                postContent << word.gsub(/spoiler/i, "****")
                end 
                puts
                puts "postContent #{postContent}"
                puts
                @post = postContent.join(" ")
                puts
                puts "@post #{@post}"

    end
end

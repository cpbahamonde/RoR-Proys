
preContent = "Spoiler is a 1998 American action sci-fi film directed by Jeff Burr and starring Gary Daniels and Meg Foster. It takes place in New York in the far future."

# preContent = post.content
arr_Content = preContent.split(" ")
system 'clear'
puts "arr_Content #{arr_Content}"
system 'pause'
    
postContent = []

arr_Content.each do |word| 
	postContent << word.gsub(/spoiler/i, "****")
end 
puts
puts "postContent #{postContent}"

@post = postContent.join(" ")
    puts "@post #{@post}"
    
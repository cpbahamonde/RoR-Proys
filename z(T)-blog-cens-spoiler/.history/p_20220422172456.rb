
preContent = "Spoiler is a 1998 American action sci-fi film directed by Jeff Burr and starring Gary Daniels and Meg Foster. It takes place in New York in the far future."

# preContent = post.content
arr_Content = preContent.split(" ")
system 'clear'
puts arr_Content
system 'pause'
    
arr_Content.each do |word| 
	postContent = arr_Content.gsub(/spoiler/i, "")
    system 'clear'
    puts "post_Content
    system 'pause'
end 

@post.content = postConten.join(" ")
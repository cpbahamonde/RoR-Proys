
preContent = "Spoiler is a 1998 American action sci-fi film directed by Jeff Burr and starring Gary Daniels and Meg Foster. It takes place in New York in the far future."

# preContent = post.content
arr_Content = preContent.split(" ")

    
arr_Content.each do |word| 
	postContent = arr_Content.gsub(/spoiler/i, "")
end 

@post.content = postConten.join(" ")
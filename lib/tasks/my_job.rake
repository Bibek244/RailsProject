namespace :api_job do
  desc "Api fect data insert db"
  task get_posts: :environment do
     posts = ApiServices.new.get_posts
     seralize_post = Hash.new
     seralize_post =  posts.map { |post| { post_id: post['postId'],title: post['title'], content: post['body']}} 
     seralize_post.each do |post|
       Post.create(post)
     end
  end

  # task get_comments: :environment do
  #   posts_id = Post.all.pluck('id')
  #   comments = posts_id.map {|id| {ApiServices.new.get_comments(id)}}
  #   comments.map {|comment| {Comment.create(comment)}}
  # end

end

json.posts do
  @posts.each do |post|
    json.set! post.id do
      json.partial!('post', post: post)
    end
  end
end
# posts: { 1: {id: 1, name: ‘test’, body: ‘hello’} }
json.users do
  @users.each do |user|
    json.set! user.id do
      json.partial!('/api/users/user', user: user)
    end
  end
end

json.likes do
  @likes.each do |like|
    json.set! like.id do
      json.partial!('/likes/like', like: like)
    end
  end
end
class HardJob
  include Sidekiq::Worker

  def perform
    # Fetch data from the API using the service
    data = ApiServices.new.get_posts

    # Insert data into the database
    objects = Hash.new
    objects =  data.map { |post| { title: post['title'], content: post['body']}} 
    objects.each do |object|
      Post.create(object)
    end
    rescue => e
      Rails.logger.error("Failed to insert data into the database: #{e.message}")
  end
end

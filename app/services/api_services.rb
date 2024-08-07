class ApiServices
  include HTTParty
    base_uri  'jsonplaceholder.typicode.com'

    def initialize()
    #   @options = {headers: 
    # {
    #   "Content-Type" => "Application/text"
    # }}    base_uri  'http://jsonplaceholder.typicode.com'

    end

    def get_posts
      self.class.get("/posts")
    end
    
    def get_post(post_id)
      self.class.get("/posts/#{post_id}")
    end

    # def users
    #   self.class.get("/users")
    # end
  

end


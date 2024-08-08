require 'csv'
class CsvController

def export 
  #api call
  data = ApiServices.new.get_posts
  

end
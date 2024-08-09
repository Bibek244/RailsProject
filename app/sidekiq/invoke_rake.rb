require 'rake'
class InvokeRake
  include Sidekiq::Worker

  def perform
    # Call rake task to get Posts from API
    Rails.application.load_tasks if Rake::Task.tasks.empty?
    Rake::Task["api_job:get_posts"].invoke
  end
end

module HerokuDevEnv
  extend self

  def load_env(filename)
    if File.exist?(filename)
      File.readlines(filename).grep(/\A\s*\w+\=/) do |line|
        ENV.send :[]=, *line.split('=', 2).map(&:strip)
      end
    end
  end

end

HerokuDevEnv.load_env('.env')

if defined?(Rails) && Rails.env
  HerokuDevEnv.load_env(".env_#{Rails.env}")
end

$LOAD_PATH.unshift File.expand_path("../../lib", __dir__)

require "ffprobe"
require "simplecov"

SimpleCov.start do
  coverage_dir "web/coverage"
  add_filter "/vendor/"
end

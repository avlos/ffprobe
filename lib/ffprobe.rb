require "ffprobe/version"
require "json"
require "hashie"

module Ffprobe
  class MediaFile
    def initialize(file_name)
      options = "-hide_banner "\
      "-loglevel panic "\
      "-print_format json "\
      "-show_format "\
      "-show_streams"
      cmd = "ffprobe #{options} #{file_name}"
      stdout = `#{cmd}`
      file_hash = JSON.parse(stdout)
      @file = MyHash.new file_hash
    end

    def streams
      @file.streams.map do |stream|
        MyHash.new stream
      end
    end

    def format
      MyHash.new @file.format
    end
  end

  class MyHash < Hash
    include Hashie::Extensions::MethodAccess
    include Hashie::Extensions::Coercion
    coerce_value Hash, MyHash

    def initialize(hash = {})
      super
      hash.each_pair do |k, v|
        self[k] = v
      end
    end
  end
end

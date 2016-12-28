require 'thor'

module Iinari
  class CLI < Thor
    desc "create /path/to/dir", "create section list"
    def create(dir)
      Iinari.create_list dir
    end
  end
end

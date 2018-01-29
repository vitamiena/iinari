require "iinari/version"
require 'iinari/cli'
require 'docx'

module Iinari
  def self.create_list(draft_dir)
    files = Dir.entries(draft_dir).select{|name| name =~ /^1[0-9]/}.sort.collect{|p| File.join(draft_dir, p)}

    files.each do |file_name|
      @chapter = false
      doc = Docx::Document.open(file_name)
      sections = doc.paragraphs.map {|p| p.text}.select{|p| p =~ /^第[0-9]章|^[0-9]\.[0-9][\s\.]/}

      sections.each do |s|
        if s =~ /^第[0-9]章/ && ! @chapter
          puts '■ ' + s.gsub(/第|章/, '第' => '', '章' => ' ')
          @chapter = true
        elsif s =~ /^[0-9]\.[0-9]\s/
          puts "★ #{s} "
        elsif s =~ /^[0-9]\.[0-9]\./
          puts "[ ] #{s}"
        end
      end
      puts ''
      puts '------------------------------------------------------------'
    end
  end
end

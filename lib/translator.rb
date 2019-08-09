require "yaml"

def load_library(path)
  library = { "get_meaning" => {}, "get_emoticon" => {} }
  YAML.load(path).each do |meaning, (english, japanese)|
    library["get_emoticon"][english] = japanese
    library["get_emoticon"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
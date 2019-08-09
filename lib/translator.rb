require "yaml"

def load_library(path)
  library = { "get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(path).each do |meaning, (english, japanese)|
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(path, eng_emoticon)
    library = load_library(path)
    result = library["get_emoticon"][eng_emoticon]
    if result
      result
    else
      "Emoticon not found."
    end
end

def get_english_meaning
  # code goes here
end
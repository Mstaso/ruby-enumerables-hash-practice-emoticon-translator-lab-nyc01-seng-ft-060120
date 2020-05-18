# require modules here
require 'yaml'
require "pry"

def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {}
  emoticons.each do |emotion_string, emoticon_array|
    new_hash[emotion_string] = {}
    new_hash[emotion_string][:english] = emoticon_array[0]
    new_hash[emotion_string][:japanese] = emoticon_array[1]
  end
  new_hash
end


def get_japanese_emoticon(path, emoticon_array)
  new_hash = load_library(path)
  result = new_hash["angel"][:japanese]
 if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning (path, emoticon_array)
    new_hash = load_library(path)
    result = new_hash[emoticon_array[0]]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end


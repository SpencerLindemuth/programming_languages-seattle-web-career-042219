require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |style, language|
    language.each do |lang, type|
      array << style
      new_hash[lang] = {:type => type[:type], :style => array }
      array = []
    end
  end
  new_hash

end

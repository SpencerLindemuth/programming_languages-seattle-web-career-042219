require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |style, language|
    language.each do |lang, type|
      new_hash[lang] = {:type => type[:type], :style => array }
      new_hash[lang][:style] << style
      array = []
    end
  end
  new_hash

end

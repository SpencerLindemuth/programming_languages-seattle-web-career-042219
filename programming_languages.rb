require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |style, language|
    language.each do |lang, type|
      new_hash[lang] = {:type => type[:type], :style => [] }
      new_hash[lang][:style] << style
    end
  end
  new_hash
  binding.pry
end

require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |style, language|
    language.each do |lang, type|
      if new_hash[lang][:style].length = 0
        array << style
        new_hash[lang] = {:type => type[:type], :style => array }
      elsif new_hash[lang][:style].length != 0
        new_hash[lang] = {:type => type[:type]}
        array = new_hash[lang][:style]
        array << style
        new_hash[lang][:style] = array
      end
    end
  end
  new_hash
  binding.pry
end

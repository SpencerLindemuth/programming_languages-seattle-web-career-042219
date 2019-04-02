require 'pry'


def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |style, language|
    language.each do |lang, type|
      if array.length != 0
        new_hash[lang] = {:type => type[:type]}
        array = new_hash[lang][:style]
        array << style
        new_hash[lang][:style] = array
      else
        array << style
        new_hash[lang] = {:type => type[:type], :style => array }
      end
    end
  end
  new_hash
  binding.pry
end

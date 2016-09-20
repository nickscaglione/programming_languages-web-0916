def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, each_lang_hash|
    each_lang_hash.each do |lang_name, type_hash|
      if new_hash[lang_name] == nil
        new_hash[lang_name] = type_hash
        new_hash[lang_name][:style] = []
      end
      new_hash[lang_name][:style] << style
    end
  end
  new_hash
end


# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }

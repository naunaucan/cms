# TruncateHtml::rails.configure do |config|
#   config.length        = 50
#   config.omission      = '...(go)'
# end

# TruncateHtml.configure do |config|
#   config.word_boundary = /\S[\.\?\!]/
# end

# used
# some_html = '<ul><li><a href="http://whatever">This is a link</a></li></ul>'
# truncate_html(some_html, length: 15, omission: '...(continued)')
#   => <ul><li><a href="http://whatever">This...(continued)</a></li></ul>


# You can also truncate the HTML at a specific point not based on length but content. To do that,
# place the :break_token in your source. This allows the truncation to be data driven,
# breaking after a leading paragraph or sentence. If the :break_token is in your content before the specified :length,
# :length will be ignored and the content truncated at :break_token. If the :break_token is in your
# content after the specified :length, :break_token will be ignored and the content truncated at :length.

# TruncateHtml.configure do |config|
#   config.break_token = '<!-- truncate -->'
# end

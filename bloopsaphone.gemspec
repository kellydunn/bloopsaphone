Gem::Specification.new do |s|
  s.name = 'viking-bloopsaphone'
  s.version = '0.4.1'

  s.authors = ["why the lucky stiff", "Jeremy Stephens"]
  s.date = '2009-09-26'
  s.description = 'arcade sounds and chiptunes'
  s.email = 'viking415@gmail.com'
  s.extensions = ["ext/ruby/extconf.rb"]
  s.extra_rdoc_files = ["README", "COPYING"]
  s.files = ["COPYING", "README", "c/bloopsaphone.c", "c/bloopsaphone.h",
    "c/notation.c", "ext/ruby/extconf.rb", "ext/ruby/rubyext.c",
    "ext/ruby/test.rb", "ext/ruby/test_load.rb", "ext/ruby/test_record.rb"]
  s.has_rdoc = false
  s.homepage = 'http://github.com/viking/bloopsaphone'
  s.summary = 'arcade sounds and chiptunes'
end

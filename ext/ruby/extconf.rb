require 'mkmf'
require 'fileutils'

$CFLAGS << " -I../../c "

%w[../../c/notation.c ../../c/bloopsaphone.c ../../c/bloopsaphone.h].each do |fn|
  abort "!! ERROR !!\n** #{fn} not found; type 'make ruby' in the top directory\n\n" \
    unless File.exists? fn
  FileUtils.cp(fn, ".")
end

# have_library("portaudio")
unless find_library("portaudio", "Pa_Initialize")
  abort("could not find Pa_Initialize symbol in portaudio")
end

# have_library("sndfile")
unless find_library("sndfile", "sf_open")
  abort("could not find sf_open symbol in sndfile")
end

create_makefile("bloops")

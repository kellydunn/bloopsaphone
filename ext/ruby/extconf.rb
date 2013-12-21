require 'mkmf'
require 'fileutils'

$CFLAGS << " -I../../c "

%w[../../c/notation.c ../../c/bloopsaphone.c ../../c/bloopsaphone.h].each do |fn|
  abort "!! ERROR !!\n** #{fn} not found; type 'make ruby' in the top directory\n\n" \
    unless File.exists? fn
  FileUtils.cp(fn, ".")
end

HEADER_DIRS = [
  "#{ENV['HOME']}/app-root/repo/lib/include",
  Config::CONFIG['includedir']
]

LIB_DIRS = [
  "#{ENV['HOME']}/app-root/repo/lib",
  Config::CONFIG['libdir']
]

dir_config('portaudio', HEADER_DIRS, LIB_DIRS)
dir_config('sndfile', HEADER_DIRS, LIB_DIRS)

# have_library("portaudio")
unless find_library("portaudio", "Pa_Initialize")
  abort("could not find Pa_Initialize symbol in portaudio")
end

# have_library("sndfile")
unless find_library("sndfile", "sf_open")
  abort("could not find sf_open symbol in sndfile")
end

create_makefile("bloops")

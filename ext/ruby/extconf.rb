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
  Config::CONFIG['includedir'],
  "/vagrant/lib/include"
]

LIB_DIRS = [
  "#{ENV['HOME']}/app-root/repo/lib",
  Config::CONFIG['libdir'],
  "/vagrant/lib"
]

dir_config('portaudio', HEADER_DIRS, LIB_DIRS)
dir_config('sndfile', HEADER_DIRS, LIB_DIRS)
dir_config('FLAC', HEADER_DIRS, LIB_DIRS)

# have_library("portaudio")
unless find_library("portaudio", "Pa_Initialize")
  abort("could not find Pa_Initialize symbol in portaudio")
end

# have_library("sndfile")
unless find_library("sndfile", "sf_open")
  abort("could not find sf_open symbol in sndfile")
end

have_library("FLAC")
#unless find_library("FLAC", "FLAC__seekable_stream_encoder_set_write_callback")
#  abort("could not find FLAC__seekable_stream_encoder_set_write_callback symbol in FLAC")
#end

create_makefile("bloops")

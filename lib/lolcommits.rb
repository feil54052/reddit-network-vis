$:.unshift File.expand_path('.')

require 'core_ext/class'
require 'mini_magick'
require 'fileutils'
require 'git'
require 'open3'
require 'active_support/inflector'
require 'active_support/concern'
require 'active_support/callbacks'
require 'methadone'

require 'lolcommits/version'
require 'lolcommits/configuration'
require 'lolcommits/capturer'
require 'lolcommits/capture_mac'
require 'lolcommits/capture_linux'
require 'lolcommits/capture_windows'
require 'lolcommits/capture_fake'
require 'lolcommits/git_info'
require 'lolcommits/plugin'
require 'lolcommits/plugins/loltext'
require 'lolcommits/plugins/statsd'
require 'lolcommits/plugins/lolsrv'

# require runner after all the plugins have been required
require 'lolcommits/runner'

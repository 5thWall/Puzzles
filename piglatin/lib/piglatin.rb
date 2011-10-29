require_relative "piglatin/piglatin.rb"

$<.each { |l| puts PigLatin::transform l }
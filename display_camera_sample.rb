require 'orocos'
require 'vizkit'

include Orocos
Orocos.initialize

log = Orocos::Log::Replay.open(File.join("logfiles","camera_sample.0.log"))

Vizkit.display log.camera.frame
Vizkit.control log
Vizkit.exec

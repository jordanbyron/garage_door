dir  = File.expand_path(__dir__ + '/..')
God.watch do |w|
  w.name  = "watch"
  w.group = "garage_door"
  w.dir   = dir
  w.start = dir + "/bin/watch"
  w.keepalive
end

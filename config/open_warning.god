dir  = File.expand_path(__dir__ + '/..')
God.watch do |w|
  w.name  = "open_warning"
  w.group = "garage_door"
  w.dir   = dir
  w.start = dir + "/bin/open_warning"
  w.env   = {'PROWL_API_KEY' => '0c2956d124d47eb41eabbbc812eb4f6f164bcccc'}
  w.keepalive
end

postName = Time.new.strftime("%Y-%m-%d") + "-" + ARGV[0].gsub(" ", "-")

POSTPATH = "./_posts/"
_post = File.new(POSTPATH + postName + ".md", "w")

_post.syswrite("---\ntitle: #{ARGV[0]}\ntags:  []\n---")


# puts POSTPATH + postName
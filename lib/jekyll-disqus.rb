require "jekyll-disqus/version"

module Jekyll
  class DisqusTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @disqus_name = text.strip
      if @disqus_name.empty?
      	@disqus_name = context.registers[:disqus]
    end

    def render(context)
      html = <<-EOB
var disqus_shortname = '#{@disqus_name}';
(function() {
  var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
  dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
  (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
EOB
      html
    end
  end
end

Liquid::Template.register_tag('disqus', Jekyll::DisqusTag)
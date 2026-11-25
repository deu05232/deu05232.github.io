# Keeps pages with `noindex: true` (front matter or _config.yml defaults) out
# of search engines by adding <meta name="robots" content="noindex"> to <head>.
# Pair it with `sitemap: false` so the page is also left out of sitemap.xml.
#
# Do not also block these URLs in robots.txt: a crawler that may not fetch a
# page never sees its noindex tag, and Google can keep the bare URL indexed.

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.data["noindex"] == true
  next unless doc.output_ext == ".html" && doc.output

  doc.output = doc.output.sub(/<head(\s[^>]*)?>/i) { |tag| %(#{tag}<meta name="robots" content="noindex">) }
end

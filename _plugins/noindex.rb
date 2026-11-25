# Keeps the whole site out of search engines while `noindex_site: true` is set
# in _config.yml: every HTML page gets <meta name="robots" content="noindex">
# in <head>, and every page is left out of sitemap.xml.
#
# Do not also block the site in robots.txt: a crawler that may not fetch a
# page never sees its noindex tag, and Google can keep the bare URL indexed.

Jekyll::Hooks.register :site, :post_read do |site|
  next unless site.config["noindex_site"] == true

  (site.pages + site.documents).each { |doc| doc.data["sitemap"] = false }
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.site.config["noindex_site"] == true
  next unless doc.output_ext == ".html" && doc.output

  doc.output = doc.output.sub(/<head(\s[^>]*)?>/i) { |tag| %(#{tag}<meta name="robots" content="noindex">) }
end

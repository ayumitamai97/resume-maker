require "PDFKit"
require "erb"
require "pry"

erb_file = File.open("pdf.html.erb").read
rendered_html = ERB.new(erb_file).result

file = open("RubyPDFExample.pdf","w")
file.puts PDFKit.new(rendered_html).to_pdf
file.close



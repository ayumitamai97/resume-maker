require "PDFKit"
require "erb"

erb_file = File.open("pdf.html")
# erb_file = File.open("pdf.html.erb")

# rendered_html = ERB.new(erb_file).result

file = open("RubyPDFExample.pdf","w")
# file.puts PDFKit.new(erb_file).to_pdf
file.puts PDFKit.new(erb_file).to_pdf
file.close



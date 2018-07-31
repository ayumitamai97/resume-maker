require "PDFKit"
 
htmlString = File.open("pdf.html")
 
file = open("RubyPDFExample.pdf","w")
file.puts PDFKit.new(htmlString).to_pdf
file.close

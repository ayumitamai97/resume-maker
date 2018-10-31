require "PDFKit"
require "erb"
require "pry"
require "optparse"
opt = OptionParser.new

PDFKit.configure do |config|
  config.wkhtmltopdf = `which wkhtmltopdf`.to_s.strip
  config.default_options = {
    encoding:                "UTF-8",  # エンコーディング
    page_size:               "A4",     # ページのサイズ
    margin_top:              "1in", # 余白の設定
    margin_right:            "1in",
    margin_bottom:           "1in",
    margin_left:             "1in",
    disable_smart_shrinking: false
  }
end

erb_file_name = opt.on('-f').default_argv[-1]

erb_file = File.open(erb_file_name).read
rendered_html = ERB.new(erb_file).result

file = open("resume_template.pdf","w")
file.puts PDFKit.new(rendered_html).to_pdf
file.close

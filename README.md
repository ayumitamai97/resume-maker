# ファイル生成元となる*.erbファイルを指定してPDFを生成する
```
$ ruby make.rb -f resume_template.html.erb
```

# HTMLで編集する
## 問題
erbで<tr>の出力にループ処理を使っているが、実際にHTMLの中身を編集するときに少し面倒そう。
erbを使わずHTMLベタ書きのほうがよいのか。他にもっとよいやり方があるのか。



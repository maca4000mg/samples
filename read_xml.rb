#!/bin/ruby
require 'rexml/document'

doc = REXML::Document.new(open("hoge.xml"))

# 全文を出力
# puts doc

# 添え字指定がない場合，先頭要素を出力する
# puts doc.elements['root/a/b'].text

# 2つ目の<a>タグ，2つ目の<b>タグを出力する
# puts doc.elements['root/a[2]/b[2]'].text

# 全ての<b>タグを出力する
# doc.elements.each('root/a/b') do |element|
#     puts element.text
# end

# 属性値を出力
doc.elements.each('root/a[3]') do |element|
    puts element.attributes["name"]
    puts element.attributes["price"]
end


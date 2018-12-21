require 'open-uri'
class AbcController < ApplicationController
  def index
    pdf = Prawn::Document.new
    pdf.image open("https://www.w3schools.com/images/lamp.jpg")
   # pdf.render_file("abc.pdf") # it prints the image to pdf
    send_data(pdf.render, filename: 'abc.pdf', type: 'application/pdf')
  end
end

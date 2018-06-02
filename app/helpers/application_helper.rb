module ApplicationHelper

  def qrcode_tag(text, options = {})
      qr = ::RQRCode::QRCode.new(('sample_url/' + text))
   return ChunkyPNG::Image.from_datastream(qr.as_png.resize(300,300).to_datastream).to_data_url
  end
end

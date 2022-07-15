require 'rqrcode'

url = ARGV[0]
colour = ARGV[1] ? "#{ARGV[1]}" : 'black'

qr_code = RQRCode::QRCode.new(url)

png = qr_code.as_png(
	color: colour,
	fill: "white",
	size: 300
	)

IO.binwrite("main-vision.png", png.to_s)

# puts ARGV

# p ARGV
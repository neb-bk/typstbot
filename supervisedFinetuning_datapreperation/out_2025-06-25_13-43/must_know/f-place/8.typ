
#set page(height: 200pt)

#place(
  center, // Place the watermark in the center of the page
  dy: -1cm, // Slight vertical adjustment
  scale(50%, // Scale down the image to 50%
    image("../../../image.png", width: 100%)
  )
)

#lorem(50)

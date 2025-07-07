
#let fancy_block = block(stroke: red, inset: 1em)[This is a very important piece of text inside a fancy block.]

// Place the block directly
#fancy_block

// Use the block inside a figure
#figure(caption: "The Fancy Block Explained", fancy_block)

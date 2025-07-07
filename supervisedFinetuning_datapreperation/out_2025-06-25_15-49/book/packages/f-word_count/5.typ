
    #import "@preview/wordometer:0.1.4": word-count
    #show: word-count.with(exclude: "caption")

    #figure(
      image("../../../../image.png", width: 50%),
      caption: [This caption will not be counted.]
    )
    This text will be counted.
    

    #import "@preview/wordometer:0.1.4": word-count
    #show: word-count.with(exclude: figure.caption)

    #figure(
      image("../../../../image.png", width: 50%),
      caption: [This caption will also not be counted.]
    )
    This text will be counted.
    

    #import "@preview/wordometer:0.1.4": word-count
    #show: word-count.with(exclude: raw.where(block: true))

    This text is counted.
    

    #import "@preview/wordometer:0.1.4": word-count
    #show: word-count.with(exclude: <ignore-me>)

    This sentence is counted. This part #[is ignored] <ignore-me>.
    
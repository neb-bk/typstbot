
#set page(height: 8em)
// Without this line, the table will not split if it's inside the figure
#show figure: set block(breakable: true)
#figure(
  table(
    columns: 5,
    [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length (bp)],
    [BWA], [2009], [BWT-FM], [Semi-Global], [125],
    [Bowtie], [2009], [BWT-FM], [HD], [76],
    [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
    [GNUMAP], [2009], [Hashing], [NW], [36],
    [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length (bp)],
    [BWA], [2009], [BWT-FM], [Semi-Global], [125],
    [Bowtie], [2009], [BWT-FM], [HD], [76],
    [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
    [GNUMAP], [2009], [Hashing], [NW], [36]
  )
)

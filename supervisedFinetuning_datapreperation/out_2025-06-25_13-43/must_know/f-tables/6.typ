
#set page(height: 8em) // Artificially reduce page height for demonstration

// Without this, the table fails to split upon several pages when inside figure
#show figure: set block(breakable: true)

#figure(
  table(
    columns: 5,
    [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length (bp)],
    [BWA], [2009], [BWT-FM], [Semi-Global], [125],
    [Bowtie], [2009], [BWT-FM], [HD], [76],
    [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
    [GNUMAP], [2009], [Hashing], [NW], [36],
    [Blast], [1990], [Hashing], [Heuristic], [1000],
    [Samtools], [2009], [BWT-FM], [Local], [500],
  ),
  caption: "Table of Genome Aligners with breakable setting."
)

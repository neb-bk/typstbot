
#set page(height: 8em)
#table(
  columns: 3,
  ( // Parentheses used for a block of content that can be duplicated
    [Item], [Description], [Value],
    [A], [Long description for item A, causing text wrapping if necessary.], [100],
    [B], [Description for B.], [200],
    [C], [Description for C, possibly longer to test breaking.], [300],
    [D], [Description for D.], [400],
    [E], [Description for E.], [500],
    [F], [Description for F.], [600],
    [G], [Description for G.], [700],
    [H], [Description for H.], [800],
    [I], [Description for I.], [900],
    [J], [Description for J.], [1000],
    [K], [Description for K.], [1100],
    [L], [Description for L.], [1200],
  ) * 2 // Duplicate content to ensure it overflows the small page height
)

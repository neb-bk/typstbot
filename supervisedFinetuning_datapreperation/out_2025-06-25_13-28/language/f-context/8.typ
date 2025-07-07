
#set heading(numbering: "1.")

= Introduction <intro>
#lorem(5)
#pagebreak()

= Background <back>
#lorem(5)

The 'Introduction' heading is at: \
#context { locate(<intro>).position() } \

The 'Background' heading is at: \
#context { locate(<back>).position() }

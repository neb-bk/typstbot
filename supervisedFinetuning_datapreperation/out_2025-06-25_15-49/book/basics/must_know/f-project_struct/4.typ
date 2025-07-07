
// template.typ

#let note-block = block.with(
  fill: luma(240),
  stroke: 1pt + luma(200),
  inset: 1em,
  radius: 4pt,
  width: 100%
)


// chapters/chapter_1.typ

#import "../template.typ": *

= Chapter One: Introduction

This is some regular content.

#note-block[This is an important note for the reader!]

More content follows.

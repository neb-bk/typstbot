st
#import "@preview/codly:0.1.0": codly-init, codly
#show: codly-init.with()

#codly(languages: (
        rust: (name: "Rust Source", color: luma(180), icon: none),
    )
)

// This Rust code block will now use the specified light gray color.

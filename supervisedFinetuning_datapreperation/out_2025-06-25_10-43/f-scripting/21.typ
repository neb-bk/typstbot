
#let square(x) = x * x
```

In your main document:
```typ
#import "my_module.typ": square

The square of 4 is: #square(4)

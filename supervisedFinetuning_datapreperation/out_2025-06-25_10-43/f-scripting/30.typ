
#let calculate_something(x) = x * 2
```

In your main document:
```typ
#import "utils.typ": calculate_something

The result is: #calculate_something(5)

# R_functions
A set of useful R functions

## `makeTransparent`
Make a color transparent.

**Usage :**<br/>
`plot(x,y,col=makeTransparent("red"))`

More examples and info in file

## `area_poly`
Color an area under a curve to left or right of given value.
**Usage :**<br/>
```
s <- curve(f(x))
area_poly(s, val, side="gauche", col="blue")
```
More examples and info in file

# mytri

**mytri** is an R package that demonstrates a simple method for connecting five 2D points into three triangles. This approach forms the foundation for exploring advanced Delaunay triangulation techniques in R.

## Features

- **Triangulation Function:**  
  Implements `connect_five_points` that takes a 5×2 matrix of points and returns the points along with the edges forming three triangles.
- **Sample Data:**  
  Provides a built-in dataset `sample_points` with five 2D coordinates.
- **Graphical Output:**  
  Offers code to visualize the triangulation using ggplot2.
  
## Installation

Install the development version of **mytri** from GitHub:

``` r
devtools::install_github("SohaibRaoufy/mytri")
```

## Example

The following example shows how to use the package:

``` r
# Load the built-in sample data
data("sample_points")

# Calculate the triangulation using the built-in data
result <- mytri::connect_five_points(sample_points)
print(result)
```


``` r
# Example custom input: a 5x2 matrix of points
custom_points <- matrix(c(1, 2, 2, 4, 4, 5, 5, 1, 3, 9), ncol = 2, byrow = TRUE)
result <- mytri::connect_five_points(custom_points)
print(result)

```

``` r
$points
     [,1] [,2]
[1,]    1    2
[2,]    2    4
[3,]    4    5
[4,]    5    1
[5,]    3    9

$edges
      [,1] [,2]
 [1,]    1    2
 [2,]    2    3
 [3,]    3    1
 [4,]    2    3
 [5,]    3    4
 [6,]    4    2
 [7,]    3    4
 [8,]    4    5
 [9,]    5    3
```

## Graphical Representation

Below is the graphical representation of the triangulation:

![Graphical Representation of Triangles](triangles.png)


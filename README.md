# Plotter
<img src='http://s11.postimg.org/smkw0aneb/phase_free_damped.png' border='0' alt="phase free damped" style="max-height: 300px"/>

This is from a code challenge to read an input file with two points designated by pound signs (#) and create an output file (or just stdout) that would connect the two points.

### Example input file: input1.txt
```
  #





           #
```
### Example output file (or stdout):
```
  #
  #
  #
  #
  #
  #
  ###########

```
My approach was to create a class called Plot which would do all the work. As you can see in `rf_test.rb` all you need to do is require `plot.rb` and then instantiate it with the name of a file to be processed. The output method takes an optional boolean param to show additional information (good for debugging).

### Sample output:
```
Coordinates:
----------------------------------------
x1:   2, y1:   2
x2:  11, y2:   8
----------------------------------------
Output: Direction: right
----------------------------------------


  #
  #
  #
  #
  #
  #
  ###########
```

# Plotter

This is from a code challenge to read an input file with two pound signs in it and create an output file (or just stdout) that would connect the two points.

Example input file: input1.txt
```
  #





           #
```
Example output file (or stdout):
```
  #
  #
  #
  #
  #
  #
  ###########

```
My approach was to create a class called Plot which would all the work. As you can see in `rf_test.rb` all you need to do is require `plot.rb` and then instantiate it with the name of a file to be processed. The output method takes an optional boolean param to show additional information (good for debugging)

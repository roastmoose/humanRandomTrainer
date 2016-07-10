#humanRandomTrainer readme

Essentially this application is built to give realtime plots showing the frequency of occurrence of numbers within a string of numbers provided by the user, and a string of numbers generated from a uniform random sample from 0-9 by R. 

##Input

In the upper left a text input box enables the user to input a string of numbers. These numbers will be used to drive the three graphs. Ideally, the user will input random numbers either through button-mashing, or entering numbers thought of.

##Plots

### Upper left plot

The first plot (thinking clockwise from the input panel) shows the counts of occurence of numbers within the user's input string.

### Upper Right Plot

The second plot shows the counts of occurence of numbers in within the computer provided random numbers (the same lenth as the user's input string)

## Bottom Plot

Ideally, if the user had provided well randomized numbers this would appear as roughly equal counts of occurence across all numbers in the upper left plot. The computer provided upper right plot should generally show roughly equal counts across all columns (becoming more equal as the user's input string lengthens)

However this is not sufficient to show that the human input is indeed random, since 1234567890 while not random, shows perfect equality. To test for "memory" that is, patterns, in the human input the bottom graph shows "digrams" in the human input string, that is the relative frequency of occurence of two number odered pairs in the input (12,25,99, etc). You will see that as the sample grows the computer digram relative frequency is generally flat, whereas the human input will often show large bias to some digrams like 23 due to the way the fingers mash the buttons. In fact, the paper referrenced in the presentation suggests that even without button mashing, humans will show poor performance on digram relative frequency compared to random numbers, even when attempting to pull random numbers out of their heads. Enjoy!
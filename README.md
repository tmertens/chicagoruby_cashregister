# chicagoruby_cashregister
Chicago Ruby cash register https://www.meetup.com/ChicagoRuby/events/239331246/

Ruby was designed as an Object Oriented language, but it is helpful to know the benefits of functional programming, 
so today we are going to try to approach our problem following the rules of functional programming.
There are a few fundemental differences between OOP and FP. As is evendent by the name, OOP deals with "objects", which 
are essentially data structures containing attributes (data) and methods (behavior). FP, on the other hand, does not keep 
track of the state and holds that data should be immutable. 

This series published by site point is pretty comprehensive, and does a pretty good job at explaining the basic tenets 
of functional programming and how ruby can be adapted to be written in a functional way. (part 2 | part 3). 

Our challenge today is to write functional ruby code to mimic a cash register during a transaction.  

A basic grocery transaction, for example, will involve ringing up different items, each of which has 
its own price, totalling the cost of the items, adding tax to the total, and printing a receipt. You will 
want to consider things like the quantity of a particular item, whether or not it is taxable and at what rate. 
You can even incorporate discounts and coupons for these items.
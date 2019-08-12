import UIKit

var str = "Hello, playground"
//Just say
import UIKit
//
var authorArray : [String] = []
//You are creating an empty array called authorArray (line 7)
// this line of code is just definining the variable as a string
var quoteDict = [
    //creating a dictionary called quoteDict where the keys are the authors and the values are the quotes themselves (lines 10-14)
    "Shakespeare": "To be or not to be",
    "Martin Luther King": "I have a dream",
    "Abraham Lincoln": "Four score and 7 years ago"]
for (thisAuthor, thisQuote) in quoteDict{
    authorArray.append(thisAuthor)
}
//lines 17-19, you are asking the code to add the author's name to the array (append). we are not appending anything that has to do with the quote. This fills up the author array with a list of the three authors

//This line of code is just a for-in loop, so we can put in all of the things without having to type them multiple times, and then later tell the code which one we would like to print
//now we access this person's value using his name as a key from dict

print(authorArray)
// In this, we have taken all our key balues and just put in the array (all the key values are the names)
//it's in an array so that we can cycle through the dictionary without any repeats
var currentQuote = quoteDict[authorArray[0]]! //--> would be a key in the dictionary, and the quoteDict is saying that we are accessing an actual dictionary, not just a key
//The purpose of the above code is to tell the code to enter into the array. It would print the author's name, but not the quote
print(quoteDict[authorArray[0]]!)   // accessing the value in the dictionary --> we typically don't use an index when accessing a dictionary
//if you say zero in dictionary, it will just give you a random one
print(quoteDict["Abraham Lincoln"]!)        //_> Don't use the index for a dictionary, because a dictionary is randomized
print("\(currentQuote) is one of the quotes of the author \(authorArray[0])")
//This line of code is justr printing your statement, as well as inputting it with the previous function that has already been defined



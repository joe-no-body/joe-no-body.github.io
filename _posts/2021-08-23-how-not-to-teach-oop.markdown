---
layout: post
title:  "How not to teach OOP (or: `class Cat extends Animal` Considered Harmful)"
date:   2021-08-23
categories: programming-pedagogy
---


Out of all the programming concepts I’ve encountered, OOP is by far the one that
I’ve wasted the most time struggling to figure out and, subsequently, spent the
most time trying to help others understand.

I say my time was wasted because, in retrospect, the vast majority of my
struggling was needless, exacerbated by low-quality resources and poor
explanations that overwhelmingly failed to address how classes should actually
be used. It didn't take me long at all to figure out the syntax of classes, but
it took me _years_ to understand what I should freaking do with them. It wasn't
until I spent several months actually working on real, practical object-oriented
code at an internship that it all started to make sense.

The problem wasn't <sup>(entirely)</sup> OOP itself. The problem was that nobody
explained how to actually use it in a way that made sense. All the resources I
could find were either too basic or too advanced, and nothing seemed to
effectively bridge the gap. The lack of good resources certainly didn't motivate
me to keep digging too much. For a long time, I wondered if OOP was even useful,
or if it was just some arcane exercise for people who wanted to make themselves
feel smart by making things more complicated than they needed to be.

I know I'm not alone here, either. I've talked with plenty of other people and
seen countless discussions online from folks struggling with OOP, and the same
issues crop up over and over. Overwhelmingly, the impediment isn't the mechanics
of classes and objects, even though that is certainly a challenge. Over and over
again, the biggest issue I've seen is that people get the basics, but they don't
know what to do with that.

A lot of the advice I came across in that phase was just to practice, but
honestly that didn't help, because I didn't even know what I was supposed to be
practicing.


If you open Google (or your search engine of choice) and search for tutorials on
object-oriented programming, you're likely to encounter an example that looks
something like this:

```java
// Reproduced from https://www.w3schools.com/java/java_abstract.asp

// Abstract class
abstract class Animal {
  // Abstract method (does not have a body)
  public abstract void animalSound();
  // Regular method
  public void sleep() {
    System.out.println("Zzz");
  }
}

// Subclass (inherit from Animal)
class Pig extends Animal {
  public void animalSound() {
    // The body of animalSound() is provided here
    System.out.println("The pig says: wee wee");
  }
}

class MyMainClass {
  public static void main(String[] args) {
    Pig myPig = new Pig(); // Create a Pig object
    myPig.animalSound();
    myPig.sleep();
  }
}
```

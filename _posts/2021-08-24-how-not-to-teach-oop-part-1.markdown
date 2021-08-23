---
layout: post
title:  "How not to teach OOP, Part 2: `class Cat extends Animal` Considered Harmful"
date:   2021-08-24
categories: programming-pedagogy
published: no
---

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
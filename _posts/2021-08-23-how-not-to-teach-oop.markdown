---
layout: post
title:  "How not to teach OOP, part 0: How not to learn OOP"
date:   2021-08-23
categories: programming-pedagogy
---


Out of all the programming concepts I’ve encountered, OOP is by far the one that
I’ve wasted the most time struggling to figure out and, subsequently, spent the
most time trying to help others understand.

I say my time was wasted because, in retrospect, the vast majority of my
struggling was needlessly exacerbated by low-quality resources and poor
explanations that overwhelmingly failed to address how the hell classes should
actually be used. 

The frustrating part is that it didn't take me long at all to figure out the
syntax of classes, but it took me _years_ to understand what I should freaking
do with them. I could figure out how to declare a class, implement methods, and
all that, but I couldn't figure out why it was useful, when I should do so, or
what a useful class even looked like. It wasn't until I spent several months
actually working on real, practical object-oriented code at an internship that
it all started to make sense.

The problem wasn't <sup>(entirely)</sup> OOP itself.[^problems] The problem was
that all the resources I could find and all the instruction I got was primarily
focused on the basic mechanics of classes---constructors, methods, inheritance,
etc.---but utterly neglected how all of it looked in practice. Even when I tried
learning more on my own, most of what I found was far too abstract and advanced.
Nothing seemed to actually bridge the gap between the extremes of "baby's first
class" and "Martin Fowler's Extreme Design Patterns for Big Brain Geniuses". The
lack of readily-available, high-quality resources certainly didn't motivate me
to keep looking, either.

A lot of the advice I came across in that period was just to practice, but
honestly that didn't help, because I didn't even know what I was supposed to be
practicing. Most of the time, it seemed like I just ended up with a mess of
confusing code and no clear idea of how to clean it up. For a long time, I
wondered if OOP was even useful or if it was just some arcane exercise for
people who wanted to make themselves feel smart by overcomplicating things.

I know I'm not alone here, either. I've talked with plenty of other people and
seen countless discussions online from folks struggling with OOP, and the same
issues crop up over and over. Overwhelmingly, the impediment isn't the basic
mechanics of classes and objects, even though that is certainly a challenge.
Instead, the problem is how to actually apply the basics to practical code.

I would be remiss if I didn't mention the problem of false understanding, too.
To be blunt, a lot of the people who are stuck learning OOP (including my past
self) don't even know they're stuck. I don't want to pick on these people,
because they're just going off what they've been taught, but this group is a
major source of hard-to-maintain, unnecessarily complex code and of meritless
claims that OOP is useless or only narrowly applicable to domains like game
development.[^useless] However, the problem for these folks is the same: they've
learned the basics, but not how to apply them.

It doesn't have to be this way.

In this series, I want to further explore why OOP is so difficult to learn, some
specific tropes in OOP pedagogy that I've seen hamper learning, and sketch an
outline of how we might do better.

Next time: _How not to teach OOP, part 1: `class Cat extends Animal` considered harmful_


[^problems]:
    There are definitely some aspects of OOP that didn't do me (or anyone else)
    any favors when trying to learn it.

[^useless]:
    This is not to say that all criticisms of OOP are meritless or grounded in
    misunderstandings. See footnote [^problems].
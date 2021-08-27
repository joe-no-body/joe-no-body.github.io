---
layout: post
title:  "Thoughts on OOP jargon"
date:   2021-08-26
categories: programming-pedagogy
tags: oop
published: yes
---

This post is an aside to my ongoing series [_How
not to teach OOP_]({% link _posts/2021-08-23-how-not-to-teach-oop.markdown %}).

In Part 0 of the series, I mentioned that I didn't really grok OOP until I'd
spent some time working on it in the real world. I've heard a lot of similar
stories from other folks. 

Unfortunately, basically everyone I know of who's had this experience struggles
to articulate what exactly finally led to their understanding, which is part of
why it took me so long to get there. I've even heard people claim that it
_can't_ be articulated, that somehow this knowledge can only be absorbed my
osmosis. Even if I disagree with that idea, I think it goes to show how
difficult it is to convey the understanding of OOP.

I think one reason this is especially hard is the lack of good shared
vocabulary. Not that there isn't vocabulary available, but there's a lot of it
and a lot of the explanations out there seem to be written for people who
already understand what's being explained. 

It doesn't help that classes as a language feature expose so many different
types of functionality. You need a lot of terminology just to describe the core
features---classes, objects, instances, members, class members, static members,
fields, methods, properties, interfaces, composition, inheritance, etc.---and
that's without language-specific terminology that adds even more to think about.

Then there are higher level ideas like polymorphism, coupling, cohension, and
encapsulation for describing the specific properties that arise in
object-oriented code, along with principles like the SOLID principles that aim
to describe how to write code with more desirable properties and less
undesirable properties. 

That's not even touching on design patterns, which I
[shan't](https://www.youtube.com/watch?v=gQnG_T7kbtY) be discussing today.

All this this is compounded by the fact that so many people who grok OOP have
learned it by intutition. Even if you intuitively understand it, you don't
necessarily have that vocabulary readily available to describe what you
understand.

The thing is, I don't even think the ideas or the terms that are most helpful
are that arcane or complex, but they're so easily lost in a sea of jargon that
it's hard to get at the right ones.

I'm not really sure how to cut through this, but I think part of the issue here
is the density of available explanations. Just like it's hard to find decent OOP
tutorials for beginners, it's hard to find decent conceptual explanations even
if you've been writing object-oriented code for years.

Just look at Wikipedia's definition of the [Liskov substitution
principle](https://en.wikipedia.org/wiki/Liskov_substitution_principle), one of
the SOLID principles that gets thrown around out there a lot:

> Substitutability is a principle in object-oriented programming stating that,
> in a computer program, if S is a subtype of T, then objects of type T may be
> replaced with objects of type S (i.e., an object of type T may be substituted
> with any object of a subtype S) without altering any of the desirable
> properties of the program (correctness, task performed, etc.).

Look, I'm usually pretty okay with mathy stuff, but that's a lot to take in, and
I think it illustrates one of my major issues with a lot of the OOP guidance
I've come across. Namely: it's too damn abstract. 

That example is especially egregious, but this feels common across the board. I
took a class called "Software Engineering 1" in college and so much of the time
in class was spent defining principles like coupling and cohesion, but not
actually walking through what they look like in practice. Look at most of the
major texts on design patterns for another example.

For another example, look at this diagram from the Wikipedia article
[Composition over
inheritance](https://en.wikipedia.org/wiki/Composition_over_inheritance):

![an absurdly over-complicated UML diagram that I'm sorry to say is too abstruse for this alt text to describe](/assets/761px-UML_diagram_of_composition_over_inheritance.svg.png)

Image: [_UML diagram of composition over
inheritance_](https://en.wikipedia.org/wiki/File:UML_diagram_of_composition_over_inheritance.svg)
by Wikipedia user Sae1962.

You might claim this is a concrete example, but I absolutely disagree. This
example holds no resemblance to code you're likely to see in an actual program
except _maybe_ a game (and even then, probably not[^inheritance-bad]). Even as
someone who generally groks object-oriented code, it hurts my brain to try and
imagine how this would apply in an actual real world program.

That's why, the more I think about this, the more I come back to the point I
repeated in Part 0 of _How not to teach OOP_: practical examples are key. 

If you're studying a foreign language, you don't just memorize the grammar rules
in a vacuum. You learn a rule and then you look at real example sentences to see
how the rule works in practice. Similarly, if someone is learning an entire
programming paradigm, it only seems reasonable to illustrate key ideas with
actual code.

I think a good example to contrast with the definition of the Liskov
substitution principle above is [this DigitalOcean article on
SOLID](https://www.digitalocean.com/community/conceptual_articles/s-o-l-i-d-the-first-five-principles-of-object-oriented-design).
Granted, it starts off with the even mathier definition than Wikipedia does, but
it follows that up with this much simpler restatement:

> This means that every subclass or derived class should be substitutable for
> their base or parent class.

Importantly, it then walks through an example with code. And it's not just a
generic `class Cat extends Animal` or `class MyClass extends BaseClass` type of
example, either! It's a class with actual concrete behavior that you could
actually conceivably use or find in real code.

So part of the solution here is to get more comprehensible explanations. The
much harder problem here is that the current programming knowledge ecosystem is
so rife with unnecessarily incomprehensible explanations, making it incredibly
hard to track down what you actually need to know.

That's part of why I want to nail down the specific principles that are most
useful in grokking OOP. (Incidentally, that's the post that I originally started
trying to write today. Whoops.) 

On an even higher level, however, I also feel like there's a much larger
structural problem here that I don't even know how to approach. The fact that an
idea as ubiquitous as object-oriented programming is still so often treated as
this arcane, even borderline mystical idea feels like a huge sign that there's a
fundamental deficiency in the way that we as programmers collectively build and
communicate the core knowledge of our craft. Considering how thoroughly software
has eaten the world, it feels like we really need a better way to teach, learn,
and ultimately understand ideas that are so critical to the way we work. There
are even stronger implications here for ideas like security. I definitely don't
know what to do about that and elaborating further is beyond the scope of this
post, but it's something I think about a lot.

[^inheritance-bad]: 
    [_Game Programming Patterns_ by Robert Nystrom](http://gameprogrammingpatterns.com/contents.html), one of the only
    texts I've enjoyed on design patterns, has [this](http://gameprogrammingpatterns.com/component.html#tying-back-together) to say about inheritance in
    game development:

    > When object-oriented programming first hit the scene, inheritance was the
    > shiniest tool in its toolbox. It was considered the ultimate code-reuse
    > hammer, and coders swung it often. Since then, we’ve learned the hard way
    > that it’s a heavy hammer indeed. Inheritance has its uses, but it’s often
    > too cumbersome for simple code reuse.
    >
    > Instead, the growing trend in software design is to use composition 
    > instead of inheritance when possible. Instead of sharing code between two 
    > classes by having them inherit from the same class, we do so by having 
    > them both own an instance of the same class.

    That's right, even game devs agree composition is better than inheritance.

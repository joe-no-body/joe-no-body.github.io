---
layout: post
title:  '"Parser generators vs. handwritten parsers" -- discussion links'
date:   2021-08-23
categories: parsing links
---

Over the last few days I noticed a sharp increase in tweets about hand-written vs generated parsers on my feed.

It looks like this article may have kicked it off: [Parser generators vs. handwritten parsers: surveying major language implementations in 2021](https://notes.eatonphil.com/parser-generators-vs-handwritten-parsers-survey-2021.html) by Phil Eaton. 

The article was announced [on Twitter](https://twitter.com/phil_eaton/status/1429137493019045899).

[Says @BrianGoetz:](https://twitter.com/BrianGoetz/status/1429220728700813327)

> There's a good reason for this, and its not just (or even primarily) performance: error handling. Handwritten parsers have better error recovery, and are able to issue more informative errors for humans. (This is even more important in an IDE, parsing on each keystroke.)
>
> Its also just not that hard to maintain a handwritten parser.  In the days when Dragon Books roamed the earth, parsing was a big part compilers. But as languages have more features and richer type systems, semantic analysis dominates. Parsing is just not that big a deal any more.
>
> Before anyone asks "what about codegen", for many langs (Java, C#), that's completely outside the language compiler, in the JIT.  And yes, that's grown too.  Its not that parsing got easier, its that everything else got bigger, so parsing is a smaller part of today's compilers.

[Phil linked](https://twitter.com/phil_eaton/status/1429480736797646855) a related [HN comment thread from a C# maintainer](https://news.ycombinator.com/item?id=13915150) about why they use a hand-written parser:

> Hello, I work on the C# compiler and we use a handwritten recursive-descent parser. Here are a few of the more important reasons for doing so:
> * Incremental re-parsing. If a user in the IDE changes the document, we need to reparse the file, but we want to do this while using as little memory as possible. To this end, we re-use AST nodes from previous parses.
> 
> * Better error reporting. Parser generators are known for producing terrible errors. While you can hack around this, by using recursive-descent, you can get information from further "up" the tree to make your more relevant to the context in which the error occurred.
> 
> * Resilient parsing. This is the big one! If you give our parser a string that is illegal according to the grammar, our parser will still give you a syntax tree! (We'll also spit errors out). But getting a syntax tree regardless of the actual validity of the program being passed in means that the IDE can give autocomplete and report type-checking error messages. As an example, the code "var x = velocity." is invalid C#. However, in order to give autocomplete on "velocity", that code needs to be parsed into an AST, and then typechecked, and then we can extract the members on the type in order to provide a good user experience.
> 
> My personal opinion is that everyone should just use s-expressions. Get rid of this whole debate :P

There was also a Reddit thread on [/r/ProgrammingLanguages](https://www.reddit.com/r/ProgrammingLanguages/comments/p8vvcs/parser_generators_vs_handwritten_parsers/).


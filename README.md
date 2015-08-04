# `my_collect`

## Objectives

1. Gain more practice with the `yield` keyword and blocks.
2. Gain a deeper understanding of the common iterator `.collect`.

## Instructions

Fork and clone this repository. Run the test suite to get a better understanding of what is being asked of you. You'll write your code in `lib/my_collect.rb`. 

You are writing a method that behaves just like the real `.collect` method. It should take in an argument of a collection, iterate over that collection, and execute the code in the block you call it with for each element in the collection (use the `yield` keyword). It should return the modified collection. 

For example: 

```ruby
array = [1, 2, 3, 4]
my_collect(array) do |i|
	i * 2
end
```

Should return: 

```ruby
[2, 4, 6, 8]
```

**Don't use Ruby's `.each` method** to solve this lab. Rely on the `yield` keyword to yield each element in the collection to the block that `my_collect` is called with. 

## Resources

* [All About Ruby](http://allaboutruby.wordpress.com/) - [Ruby Blocks](http://allaboutruby.wordpress.com/2006/01/20/ruby-blocks-101/)
* [About.com](http://ruby.about.com/) - [Block Parameters and Yielding](http://ruby.about.com/od/beginningruby/a/Block-Parameters-And-Yielding.htm)
* [Coda Hale's Blog](http://blog.codahale.com/2005/11/24/a-ruby-howto-writing-a-method-that-uses-code-blocks/) - [Writing a Method that Uses Code Blocks](http://blog.codahale.com/2005/11/24/a-ruby-howto-writing-a-method-that-uses-code-blocks/)
* [Reactive's Tips](http://www.reactive.io/tips/) - [Understanding Ruby Blocks, Procs, and Lambdas](http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/)
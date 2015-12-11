_ = require 'underscore'

window._ = _

# Clojure

# _.constant

# _.negate

# _.before

# _.compose

# _.matcher

# _.throttle

# _.debounce

# Currying

# _.partial

# _.defer

# _.once

# _.wrap
hello = (name)-> "hello: " + name
hello = _.wrap hello, (func)->
  "before, " + func("moe") + ", after"
hello()

hello = (name)-> "hello: " + name
hello = _.wrap hello, (func, name)->
  "before, " + func(name) + ", after"
hello("wendy")

# _.memoize
fibonacci1 = _.memoize (n)->
  if n < 2 then n else fibonacci1(n - 1) + fibonacci1(n - 2)

fibonacci2 = _.memoize (n)->
  if n < 2 then n else fibonacci2(n - 1 ) + fibonacci2(n - 2)
, (key)->
  'k-' + key

console.log fibonacci1.cache
console.log fibonacci2.cache

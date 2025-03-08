(fn bar [whom]
  (let [whom (or whom "Bar")]
     (print
       (.. "Hello, " whom))))

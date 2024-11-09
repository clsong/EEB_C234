#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#| eval: false
eat(dressed(shower(brush(wakeup(you)))))
```
#
#
#| eval: false
you_w <- wakeup(you)
you_bw <- brush(you_w)
you_sbw <- shower(you_bw)
...
```
#
#
#| eval: false
you |> 
  wakeup() |> 
  brush() |> 
  shower() |> 
  get_dressed() |> 
  eat() 
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#

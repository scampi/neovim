" Test feedkeys() function.

func Test_feedkeys_x_with_empty_string()
  new
  call feedkeys("ifoo\<Esc>")
  call assert_equal('', getline('.'))
  call feedkeys('', 'x')
  call assert_equal('foo', getline('.'))
  quit!
endfunc

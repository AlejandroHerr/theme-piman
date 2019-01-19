function fish_prompt
  test $status -ne 0;
    and set -l colors 660000 900 c00
    or set -l colors 333 666 aaa

  set -l pwd (prompt_pwd)
  set -l base (basename "$pwd")

  set -l expr "s|~|"(rasp)"{"(off)(leaf)"^^"(off)(rasp)"}"(off)"|g; \
               s|/|"(leaf)"/"(off)"|g;  \
               s|"$base"|"(rasp)$base(off)" |g"

  echo -n (echo "$pwd" | sed -e $expr)(off)

  for color in $colors
    echo -n (set_color $color)">"
  end

  echo -n " "
end

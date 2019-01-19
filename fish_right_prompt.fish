function git::is_stashed
  command git rev-parse --verify --quiet refs/stash >/dev/null
end

function git::get_ahead_count
  echo (command git log 2> /dev/null | grep '^commit' | wc -l | tr -d " ")
end

function git::branch_name
  command git symbolic-ref --short HEAD
end

function git::is_touched
  test -n (echo (command git status --porcelain))
end

function fish_right_prompt
  set -l code $status
  test $code -ne 0; and echo (dim)"("(trd)"$code"(dim)") "(off)

  if test -n "$SSH_CONNECTION"
     printf (trd)":"(dim)"$HOSTNAME "(off)
   end

  if git rev-parse 2> /dev/null
    git::is_stashed; and echo (trd)"^"(off)
    printf (snd)"("(begin
      if git::is_touched
        echo (trd)"*"(off)
      else
        echo ""
      end
    end)(leaf)(git::branch_name)(snd)(begin
      set -l count (git::get_ahead_count)
        if test $count -eq 0
          echo ""
        else
          echo (trd)"+"(leaf)$count
        end
    end)(snd)") "(off)
  end
  printf (dim)(date +%H(leaf):(dim)%M(leaf):(dim)%S)(off)" "
end

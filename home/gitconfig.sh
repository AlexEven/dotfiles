[user]
  name = TO EDIT
  email = TO EDIT

[github]
  user = TO EDIT

[color]
  ui = auto

[alias]
  st = status
  stt = status --ignore-submodules
  ci = commit
  lg = log --graph --pretty=tformat:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%an %ar)%Creset'
  oops = commit --amend --no-edit
  br = branch -avv

  # git ignore laravel,osx,phpstorm
  ignore = "!gi() { curl -L -s https://www.gitignore.io/api/$@ >> .gitignore ;}; gi"

  # Random commit message from whatthecommit.com
  ci-rnd = !sh -c \"git commit -m '$(curl -s http://whatthecommit.com/index.txt)'\"

[core]
  pager = cat
  editor = subl -w
  mergeoptions = --no-edit
  # Treat spaces before tabs and all kinds of trailing whitespace as an error
  # [default] trailing-space: looks for spaces at the end of a line
  # [default] space-before-tab: looks for spaces before tabs at the beginning of a line
  whitespace = space-before-tab,-indent-with-non-tab,trailing-space
  # Make `git rebase` safer on OS X
  # More info: <http://www.git-tower.com/blog/make-git-rebase-safe-on-osx/>
  trustctime = false
  # Prevent showing files whose names contain non-ASCII symbols as unversioned.
  # http://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html
  precomposeunicode = false

[apply]
  # Detect whitespace errors when applying a patch
  whitespace = fix

[diff]
  mnemonicPrefix = true
  renames = true
  wordRegex = .
  submodule = log

[fetch]
  recurseSubmodules = on-demand

[grep]
  extendedRegexp = true

[log]
  abbrevCommit = true

[merge]
  conflictStyle = diff3
  # Include summaries of merged commits in newly created merge commit messages
  log = true
  tool = p4mergetool

[mergetool]
  keepBackup = false
  keepTemporaries = false
  prompt = false

[pull]
  # This is GREAT… when you know what you're doing and are careful
  # not to pull --no-rebase over a local line containing a true merge.
  # rebase = true
  # WARNING! This option, which does away with the one gotcha of
  # auto-rebasing on pulls, is only available from 1.8.5 onwards.
  rebase = preserve

[push]
  default = upstream

[rerere]
  # If, like me, you like rerere, decomment these
  autoupdate = true
  enabled = true

[status]
  submoduleSummary = true
  showUntrackedFiles = all

[tag]
  sort = version:refname


# URL shorthands

[url "git@github.com:"]

  insteadOf = "gh:"
  pushInsteadOf = "github:"
  pushInsteadOf = "git://github.com/"

[url "git://github.com/"]

  insteadOf = "github:"

[url "git@gist.github.com:"]

  insteadOf = "gst:"
  pushInsteadOf = "gist:"
  pushInsteadOf = "git://gist.github.com/"

[url "git://gist.github.com/"]

  insteadOf = "gist:"
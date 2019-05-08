# Bash: Pipe output and capture exit status

[Here] is the solution. Basically use `set -o pipefail`
or `exit ${PIPESTATUS[0]}`

## Executing my example scripts
```
wink@wink-desktop:~/prgs/bash/subshells
$ ./s.sh
cmd=./ss.sh hello
echo to hello stderr
echo to stdout

real	0m0.005s
user	0m0.004s
sys	0m0.000s
wink@wink-desktop:~/prgs/bash/subshells
$ echo $?
13
wink@wink-desktop:~/prgs/bash/subshells
$ cat z.txt
echo to hello stderr
echo to stdout

real	0m0.005s
user	0m0.004s
sys	0m0.000s
```

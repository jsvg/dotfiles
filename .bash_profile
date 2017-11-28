# Load the shell dotfiles
for file in ~/.{exports,prompt,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Cd around with using cd
shopt -s autocd

# Save multi-line commands as one command
shopt -s cmdhist

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# Recursive globbing, e.g. `echo **/*.txt`
shopt -s globstar 2> /dev/null

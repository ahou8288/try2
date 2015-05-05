all: snapshot.c
	clang -g -std=gnu11 -Wall -Werror snapshot.c -o snapshot
	./snapshot

git: snapshot.c
	git add snapshot.c
	git commit -m '$(COM)'
	git push origin master

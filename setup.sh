#!/bin/sh

git submodule init

cat << EOF > .git/hooks/post-merge
#!/bin/sh
git submodule update --remote
EOF

chmod ug+x .git/hooks/post-merge
cp .git/hooks/post-merge .git/hooks/pre-push

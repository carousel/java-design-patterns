#! /usr/bin/zsh
for d in /home/miro/IdeaProjects/java-design-patterns/*; do
  if [ -d "$d" ]; then
      cd $d
        if [ -d "$d/etc" ]; then
            cp -R $d/etc/* /home/miro/IdeaProjects/java-design-patterns/etc
        fi
  fi
done

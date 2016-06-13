#!/bin/bash

if [[ $# != 1 ]]; then
  echo "Usage $0 project_name" >&2
  exit 1
fi

TEMPLATES="$(dirname "$0")"
PROJECT_NAME="$1"
PROJECT_NAME_LOWER="$(echo "$PROJECT_NAME" | tr '[:upper:]' '[:lower:]')"

cp $TEMPLATES/java.editorconfig .editorconfig
cp $TEMPLATES/java.gitattributes .gitattributes
cp $TEMPLATES/java.gitignore .gitignore

mkdir -p src/main/java
mkdir -p src/main/resources
cp $TEMPLATES/bukkit-plugin.yml src/main/resources/plugin.yml

cp $TEMPLATES/bukkit-pom.xml pom.xml
sed -i.bak -e "s/templatefiles/$PROJECT_NAME_LOWER/g" pom.xml
sed -i.bak -e "s/TemplateFiles/$PROJECT_NAME/g" pom.xml
rm pom.xml.bak

mkdir -p "src/main/java/net/mistert2525/$PROJECT_NAME_LOWER"
cat <<EOF > "src/main/java/net/mistert2525/$PROJECT_NAME_LOWER/${PROJECT_NAME}Plugin.java"
package net.mistert2525.$PROJECT_NAME_LOWER;

import org.bukkit.plugin.java.JavaPlugin;

/**
 * @author misterT2525
 */
public class ${PROJECT_NAME}Plugin extends JavaPlugin {
}
EOF

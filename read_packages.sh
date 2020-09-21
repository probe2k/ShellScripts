#!/usr/bin/zsh

echo "Choices: "
echo "1. All packages - Required By None"
echo "2. Explicit packages - Required By None"
read choice
  
  case ${choice} in
    1) pacman -Qi | awk '/^Name/{name=$3} /^Required By/{print name" -> ", $4}'
    ;;
    2) pacman -Qei | awk '/^Name/{name=$3} /^Required By/{print name" -> ", $4}'
    ;;
  esac

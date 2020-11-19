echo "added options"
echo "====================================="
diff <(cat .config | sort) <(cat .config.old | sort) | awk '/^<.*(=|Linux)/ { $1=""; print }' 

echo "removed options"
echo "====================================="
diff <(cat .config | sort) <(cat .config.old | sort) | awk '/^>.*(=|Linux)/ { $1=""; print }'

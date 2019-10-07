IFS=$'\n\t'

if [[ ! -f $1 ]]; then
    echo "Error, file $1 does not exist"
    exit 1
fi

OUT="${1%.*}"
cat << EOF > $OUT.tf
variable "servers" {
    default = {
EOF

for server in $(< $OUT.csv); do
    name=$(echo $server | cut -d ',' -f1)
    count=$(echo $server | cut -d ',' -f2)
    yes $name | head -n$count | cat -n | awk '{print "\""$1"-"$2"\":\"" $2"\","}'
done >> $OUT.tf

cat << EOF >> $OUT.tf
}
}
EOF

terraform fmt $OUT.tf

exit 0

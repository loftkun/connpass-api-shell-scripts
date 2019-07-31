#! /bin/bash
set -eu

# 10件もない
#/bin/bash src/search.sh "ふくばねてす" "福岡|北九州|fukuoka" 10

# ぴったり10件
#/bin/bash src/search.sh "福岡,fukuoka" "福岡|北九州|fukuoka" 10

# ぴったり111件
#/bin/bash src/search.sh "福岡,fukuoka" "福岡|北九州|fukuoka" 111

# 全件
#/bin/bash src/search.sh "福岡,fukuoka" "福岡|北九州|fukuoka" 0

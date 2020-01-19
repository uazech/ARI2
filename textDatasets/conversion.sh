iconv -f utf8 -t ascii//TRANSLIT DE_* > GERMAN
iconv -f utf8 -t ascii//TRANSLIT SP_* > SPANISH
iconv -f utf8 -t ascii//TRANSLIT EN_* > ENGLISH
iconv -f utf8 -t ascii//TRANSLIT FR_* > FRENCH
cat ./FRENCH | tr -c 'a-zA-Z' ' ' | tr -d ' ' | tr 'A-Z' 'a-z' > ./FRENCH_clean
mv ./FRENCH_clean ./FRENCH
cat ./ENGLISH | tr -c 'a-zA-Z' ' ' | tr -d ' ' | tr 'A-Z' 'a-z' > ./ENGLISH_clean
mv ./ENGLISH_clean ./ENGLISH
cat ./SPANISH| tr -c 'a-zA-Z' ' ' | tr -d ' ' | tr 'A-Z' 'a-z' > ./SPANISH_clean
mv ./SPANISH_clean ./SPANISH
cat ./GERMAN | tr -c 'a-zA-Z' ' ' | tr -d ' ' | tr 'A-Z' 'a-z' > ./GERMAN_clean
mv ./GERMAN_clean ./GERMAN
wc ./FRENCH
wc ./GERMAN
wc ./SPANISH
wc ./ENGLISH

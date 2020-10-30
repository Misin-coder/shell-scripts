# List all books in a predetermined folder
# structure and use fzf fuzzy finder to search 
# for a specific book, generally pdf

BOOKSFOLDER=~/Media/Documents/Materials/Books
READER="okular"

cd $BOOKSFOLDER && \
BOOKNAME=$(ls */* | fzf --tac) && \
BOOK=$BOOKSFOLDER/$BOOKNAME
$READER "$BOOK"

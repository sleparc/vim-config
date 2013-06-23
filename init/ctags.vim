"--------------
" Ctags
"--------------


map <leader>rt  :!ctags --recurse=yes --exclude=.git --exclude=log * `rvm gemhome`/*
set tags=./tags;

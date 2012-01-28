"--------------
" Ctags
"--------------


map <leader>rt  :!ctags -R --exclude=.git --exclude=log * `rvm gemhome`/*
set tags=./tags;

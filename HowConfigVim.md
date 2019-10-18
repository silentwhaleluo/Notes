" save
:w
" quit
:q

" source confic
: source $MYVIMRC<CR> (map to leader sr)
leader hc (split and open config file)
leader vc (vsplit and open config file)


" insert
i (insert before the cursor)
I (insert before the line)
a (insert after the cursor)
A (insert at the end of the line)
o (insert and add a new line below)
O (insert and add a new line ahead)
s (delete the current charactor and insert)
S (delete this line and insert)

" replace
:{range}s/{from}/{to}/{flag}
r (replace the charactor at cursor)
R (into replace mode) 
	(map to run markdown preview)
:.,+2s/foo/bar/g (., +s from current cursor line to plus 2 lines, change foo to bar; g is flag to change all or will change only first)
:5,12s/foo/bar/g (from line 5 to line 12)
:s/foo/bar/g (the current line)
:%s/foo/bar/g (all the tex)
flag: g (global all) i (case insensitive), I (case sensitive), c (need to ask)
"

"upper and lower case
u lowercase
U UPPERCASE
gggUG (gg go top; gU change to uppercase; G go down)
guw (change case for word)
10gUj ( change 10 lines to uppercase to motion j down)
gU0 (change from cursor to the begining)
" move
h (left)
j (down)
k (up)
l (right)


" action
p (paste)
y (copy)
d (delete)
3dd (delte 3 lines)
c (change)
f (find after and move cursor on charactor)
F (find before and move on c)
t (find next and put cursor before charactor)
T (find ahead and put cursor before c)
" join multiple lines
2J (join 2 lines)


" record
q start recording/ end recording
qa record a hong called a
qayyppq record a hong called a and yarn whole line and paste 2 times and then end record

" search
/ (go to search)
n (next search result)
N (previews search result)
zz (make the item in the middel)
: nohlsearch (do not show hight light)
			(map to leader <CR>

easy way to plug vim-plug


" jump-motions
' " ' the first positon of the line of last cursor postion
' `` ' is used to go the last cursor position

" config
noremap (non-recursive and map key)
map (map key)
set (make)
exec (execute)


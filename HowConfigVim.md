" save
:w
" quit
:q
ZZ (save and quit)
:!ls (list the files in current folder)
:w [new position and or new file name] (save to new place and or name)
:w !sudo tee % (and then :q! when need sudo to save, this can save. ! means terminal commands, % means current file)


" source confic
: source $MYVIMRC<CR> (map to leader sr)
leader hc (split and open config file)
leader vc (vsplit and open config file)


" insert
i (insert before the cursor)
I (insert before the line)
a (insert after the cursor)
3a！<Esc> (insert 3 ' ! ' after cursor position)
A (insert at the end of the line)
o (insert and add a new line below)
O (insert and add a new line ahead)
s (delete the current charactor and insert)
S (delete this line and insert)

" replace substitute
:{range}s/{from}/{to}/{flag}
r (replace the charactor at cursor)
R (into replace mode) 
	(map to run markdown preview)
:.,+2s/foo/bar/g (., +s from current cursor line to plus 2 lines, change foo to bar; g is flag to change all or will change only first)
:5,12s/foo/bar/g (from line 5 to line 12)
:s/foo/bar/g (the current line)
:%s/foo/bar/g (all the tex)
flag: g (global all) i (case insensitive), I (case sensitive), c (need to ask)
:%s/a\(a-zA-Z\)/b\1/cg (change in all file, change a[a-zA-Z] to b plus [a-zA-Z], global change all and ask before change. eg. all aa, ab, aF, will be change to ba, bb, bF
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
w (next word)
3w (move to next 3 words)
b (move from back to ahead)
e ( move to the end of next word)
ge ( move to the end of previews word)
gf (when on a file position linke, open the file go file)
^ (move to the first no-space character)
0 (move to first character)
$ (move to end of this line)
3$ (move to end of next 3 line)
gg (go top)
G (go end)
230G (go to line 230)230G 
:230<CR> (go to line 230 

<C-e> (roll one line down)
<C-y> (roll one line up)
<C-d> (roll half down)
<C-u> (roll half up)
<C-f> (roll 1 screen down)
<C-b> (roll 1 screen up)
zz (make the current line in the middle of screen)
<C-o> (go the last position, can cross the files)
<C-i> (back to change position, rego; can cross file)
<C-a> (add number) 1
<C-x> (subtract number)


"mark
ma (makr the current position name as a, name can be a-zA-z)
'a (move to the begining of the mark a)
`b (move to the excectly line and column of mark b)
:marks (show all marks)
"default marks of system
. (most recent edit position)
0-9 (most recent files used)
^ (most recent insert position)
' (last move before)
" (last time quit file position)
[ (begining of the postion last time edit )
] (end  of the postion last time edit )
:delmarks a b c (delete mark a, b, c)
:delmarks! (delete all markds)


"roll back
u (undo)
U (undo for line, map)
<C-r> (redo)



p (paste)
P (paste before)
ddp (exchange this lien and next line)

:1, 10 co 20 (insert all from line 1 to line 20 to position after line 20)
:1, $ co $ (copy all files and insert into the end file)
y (copy)
d (delete)
D (delte to end =d$)
3dd (delte 3 lines)
kdgg (delete all lines before this line to top)
jdg (delete all lines after this line)
:1, 10d (delete from line 1 to line 10)
:11, $d (delete line 11 and all lines to bottom)
:1, $d (delete all lines)

c (change)
f (find after and move cursor on charactor)
F (find before and move on c)
t (find next and put cursor before charactor)
T (find ahead and put cursor before c)

" join multiple lines
J (join the line and next line)
2J (join 2 lines)
x (delete current character)
xp (exchange this character and the next character)
10x (delete 10 characters)
X (delete the character before cursor)
:1, 10 m 20 ( move line 1 to line 10 to the position after line 20)

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

" Visual
v (go into visual mode)

" 
V (go to visual line mode (choose whole line))
:normal +command (in visual mode, fater normal, apply all command to all choosed lines
:normal A.pgn (add '.png' to all choosed line)

" visual block
ctrl+v (go to visual block to choose block )


" split windows
<C-w>w (move to next view)
<C-w>j (move to the window below)
<C-w>= (make all windows equally large)
:close (close the window)
:only (close all other windows except current one)
:set splitright<CR>:vsplit<CR> (split to right)
:set nosplitright<CR>:vsplit<CR> (split to left)
:set nonsplitbelow<CR>:split<CR>
:set splitbelow<CR>:split<CR>
:res +5<CR>
:res -5<CR>
:vertical resize-5<CR>
:vertical resize+5<CR>


" new tabe
:tabe<CR> (new tab)
:-tabnext<CR> (previous tab)
:+tabnext<CR> (next tab)

" spell check
:set spell (open spell check)
[s (previews spell check)
]s (nest spell check)
map <LEADER>sc :set spell!<CR>  (! hear measn inverse, when open close, when close open)
z= (on the wrong spell, will give a suggest correct word list, and use number to choose the suggested word)
1z= (directly use the 1 suggest word to correct without opening sugguested list)

<C-x>s (at insert mode, give a suggested list



" config
noremap (non-recursive and map key)
map (map key)
set (make)
exec (execute)

"plugs

"nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

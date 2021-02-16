---
title: 'vim cheat sheet'
show_reading_time: true
skribenter:
  - lennart-kiil
date: '2020-09-21'

toc: true

emner:
  - Indholdshåndtering

tools:
  - Vim

---
** Gem en del af en fil, ved at skrive  v  bevægelse  :w FILNAVN **

** Indsæt indholdet af en fil, ved at skrive  :r FILNAVN  **

## Mange filer

### Mange filer fra  kommandolinjen  inden  vim  åbnes

```
vim *.md # åbner alle md filer i pågældende folder
```

### Mange filer når vim allerede er åben

Se: https://vi.stackexchange.com/questions/2607/how-to-open-multiple-files-matching-a-wildcard-expression

```
:args *.md # åbner alle md filer i args-listen
```

```
:n[ext] *.md # aåbner alle md  fil som buffers 
```





:e ny .md  buffer med navn

netrw :Lex så bliver vinduet der og filerne åbnes en efter en til højre for som i project drawer

Opening files in vim

Opening a new file for editing

If you’re already in vim, then there’s no need to exit it just to open a new file.
Simply switch to the command mode (ESC) and type:

:e /path/to/file
That will open the file for editing. You can also use the tab-key for autocompletion of the path.
Please note that the current file must be saved, or you’ve to use :e! to discard the unsaved changes.

Reading in a file into the current buffer (file)

Have you found yourself in the situation, where you had to merge the content of two files?
There’s always the shell way by using cat foo >>bar.
But what about when you don’t want to append the content on the end of the file, or if you’re already in vim?

Of course we can also to that! Instead of :e, we simply use :r:

:r /path/to/file
Can’t remember those commands?
Just try to remember, :e means edit, while :r  means read.


## netrw - den  indbyggede fil-browser

Use the r key to set Reverse sorting order.
Then press the s key to sort using a particular style : by name, time or file size.

t	Enter the file/directory under the cursor in a new tab

<details>
    <summary>Flere</summary>

|Map|Action|
|----|-----|
|\<F1>|Causes Netrw to issue help|
|\<cr>|Netrw will enter the directory or read the file|
|\<del>|Netrw will attempt to remove the file/directory|
|-|Makes Netrw go up one directory|
|a|Toggles between normal display, hiding (suppress display of files matching g:netrw_list_hide) showing (display only files which match g:netrw_list_hide)|
|c|Make browsing directory the current directory|
|C|Setting the editing window|
|d|Make a directory|
|D|Attempt to remove the file(s)/directory(ies)|
|gb|Go to previous bookmarked directory|
|gh|Quick hide/unhide of dot-files|
|\<c-h>|Edit file hiding list|
|i|Cycle between thin, long, wide and tree listings|
|\<c-l>|Causes Netrw to refresh the directory listing|
| mb | Bookmark current directory                                                                     |
| mc | Copy marked files to marked-file target directory                                              |
| md | Apply diff to marked files (up to 3)                                                           |
| me | Place marked files on arg list and edit them                                                   |
| mf | Mark a file                                                                                    |
| mh | Toggle marked file suffices' presence on hiding list                                           |
| mm | Move marked files to marked-file target directory                                              |
| mp | Print marked files                                                                             |
| mr | Mark files satisfying a shell-style                                                            |
| mt | Current browsing directory becomes markfile target                                             |
| mT | Apply ctags to marked files                                                                    |
| mu | Unmark all marked files                                                                        |
| mx | Apply arbitrary shell command to marked files                                                  |
| mz | Compress/decompress marked files                                                               |
| o  | Enter the file/directory under the cursor in a new browser window. A horizontal split is used. |
| O  | Obtain a file specified by cursor                                                              |
| p  | Preview the file                                                                               |
| P  | Browse in the previously used window                                                           |
| qb | List bookmarked directories and history                                                        |
| qf | Display information on file                                                                    |
| r  | Reverse sorting order                                                                          |
| R  | Rename the designed file(s)/directory(ies)                                                     |
| s  | Select sorting style: by name, time or file size                                               |
| S  | Specify suffix priority for name-sorting                                                       |
| t  | Enter the file/directory under the cursor in a new tab                                         |
| u  | Change to recently-visited directory                                                           |
| U  | Change to subsequently-visited directory                                                       |
| v  | Enter the file/directory under the cursor in a new browser window. A vertical split is used.   |
| x  | View file with an associated program                                                           |
| X  | Execute filename under cursor via                                                              |
| %  | Open a new file in netrw's current directory                                                   |


  </details>

The file browser

Did you know Vim also has a file browser called Netrw?
You can access it by defining a directory instead of a file, for example:

# On the command line
vim /path/to/directory/

# In Vim command mode
:e /path/to/directory/
Of course there are the obvious keys you might need, for example:

The cursor (or hjkl) keys to browse through the list
The return key to enter a directory or open the file
But did you know about these:

– will browse up one dir
i will change the browser style
I will hide the header
D will delete a file (confirmation required)
R will rename a file
s will change the sorting (name, time, size, exten)
r will revert the sorting
I really like the collapsing tree browsing style (I think it’s #4).
You can access it by pressing i 3 times (by default).


In this blog post, I’d like to show you how to use Vim to open and edit multiple files.
Use the right techniques and you’ll be even more productive in handling multiple files at the same time.

This is the follow up of Mastering Vim: Opening files.

Opening multiple files

Opening multiple files in vim is straight forward. Just append all the filenames as CLI args and you’re ready to go:

vim /path/to/file1 /path/to/file2 /path/to/file3
With the Vim opened, you can now see the first file.

To jump between the files you can use the following vim commands:

:n(ext)  # jumps to the next file
:prev    # jumps to the previous file
Easy, isn’t it? But now you can’t really see what files are available for editing, right? Just keep on reading and learn more about tabs.

Using tabs

Vim is awesome, and because of that it is also supporting tabs out of the box – at least since Vim 7.0.

So let’s stick to the last example, but this time we want to open the 3 files in separate tabs by using the -p CLI flag:

vim -p /path/to/file1 /path/to/file2 /path/to/file3
Vim is launched as before, but this time all files will be opened in tabs instead of hidden buffers.
The tab bar is displayed on the top of the editor / window.

Of course you can also open a new tab when you’re already in Vim in the normal mode:

:tabe [/path/to/file] (command-line command)
Interfer with tabs by staying in normal mode and using the following commands / keystrokes:

Jumping to the next tab is either gt (normal mode command) or :tabn[ext] (command-line command)
Jumping to the previous tab is either gT (normal mode command) or :tabp[revious] (command-line command)
Jumping to a specific tab is ngt (normal mode command), where n is the tab index starting by 1
Closing the current tab is :tabc[lose] (command-line command)
Looks even more promising. But you still might ask yourself how you can edit multiple files in the same window, right? Let’s see that!

Splitting the window

Of course vim can also display multiple files in one single window / workspace.
Just use the integrated split feature of Vim.

To split the window you can use one of the following command-line commands in Vim:

:sp[lit]   [/path/to/file]  # splits the window horizontally [and opens the file]
:vs[plit]  [/path/to/file]  # splits the window vertically [and opens the file]
Now you’ve multiple windows open in Vim. Just see them as “multiple Vim’s” aligned in a single terminal window.

Handling the windows can be tricky, but you’ll get used to it after a short time 😉
Just stay in the normal mode and use the following commands / keystrokes:

Jumping between windows is Ctrl-w \<cursor keys>, Ctrl-w [hjkl], or Ctrl-w Ctrl-[hjkl]
Jumping to the next window is Ctrl-w w or Ctrl-w Ctrl-w
Jumping to the previous window is Ctrl-w W
Jumping to the last accessed window is Ctrl-w p or Ctrl-w Ctrl-p
Closing the current window is Ctrl-w c or :clo[se]
Make the current window the only one and close all other ones is Ctrl-w o or :on[ly]
Tabs, windows and workspaces

Now as you know windows & tabs, please note the following.

Tabs are not classic “file tabs” as in most editors. Instead of it, tabs are like workspaces or window layouts. By default, each tab has exactly one window, and each window has exactly one file. It looks a bit like this:

Vim editor -> Tab(s) -> Window(s) -> File
Tabs are our workspaces, and you can easily split the window within the tabs, which means you can have multiple windows in a single tab. So a tab can “host” one or more windows, but not the other way around! Each tab is responsible for its own workspace / window layout.

To display the contents, windows and tabs simply use the following command-line command:

:tabs
Using the mouse

Now, remembering all those keystrokes can be tricky and moving around in windows & tabs can be frustrating in the beginning.
Though, if your terminal has integrated mouse support, then you might be able to use the mouse instead of the commands.
Just activate the mouse support first:

:set mouse=a
After that you should be able to change windows and/or tabs via mouse click.
If it doesn’t work, make sure your terminal has mouse support and it’s activated.

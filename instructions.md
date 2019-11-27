Dear all,

Here are some information on Rmarkdown/latex session that will be held on Thursday, February 21st. The repositories containing the material are available on Dropbox and Github (see course link). Feel free to read through their pdf's. If you chose to attend this session, please read the instructions uploaded on Blackboard in the "Contents" section.

Sincerely,

Asako

---

# In class 

We will create a template ".Rmd"/".Rnw" file that you can use for your homeworks and your replication project. Even if you do not immediately master everything demonstrated in class, my goal is to leave you with some resources to help you manage a reproducible research. 

# Before class

## Install LaTex and an editor

If you do not have LaTeX yet, please install LaTeX. I recommend the following distributors depending on your OS. 

### Windows

I recommend either [MikTek](https://miktex.org/download) or [TexLive](http://www.tug.org/texlive/). Both of these come with an editor called TeXworks. You can also try another editor called [TexMaker](http://www.xm1math.net/texmaker/download.html).

### Mac 

I recommend installing LaTeX via [MacTex](http://www.tug.org/mactex/) and an editor called [TexMaker](http://www.xm1math.net/texmaker/download.html). MacTex does not come with an editor, so you should definitely install TexMaker or some other editor of your choice.


## Bookmarks 

These are some websites/webpages that I recommend you to skim before class and/or bookmark for future reference.

- [Google Scholar](https://scholar.google.com/): This is the best place to get your citations in BibTex format. 
- KJ Healy's [*The Plain Person's Guide to Plain Text Social Science*](http://plain-text.co/): I would recommend at least reading sections 1 "Introduction" and 3 "Write and Edit", and studying Figure 5.1 "A plain-text document toolchain." 
- ["Reproducible Reporting with RMarkdown"](https://bioconnector.github.io/workshops/r-rmarkdown.html): This takes you through basically what I want to demonstrate in class. 
- ["Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml) and ["Style guide" from *Advanced R*](http://adv-r.had.co.nz/Style.html): Some of these practices are hard to implement if you're just beginning to write in R, but I recommend incorporating them as much as you can as you practice.


## Download sample files

Instead of writing tutorials as there are many already, I have created sample documents (.Rmd and .tex) that implement some of the tools you need for reproducible research. The material is available in  "Rmd-sample" and "latex-sample". These folders can be downloaded via Dropbox or Git.


### Dropbox

[Here](https://www.dropbox.com/s/4qet0zbrlf3p1ai/plain_text_tutorial.zip?dl=0) is the Dropbox link to the zipfile: https://www.dropbox.com/s/4qet0zbrlf3p1ai/plain_text_tutorial.zip?dl=0

The zip file "plain_text_tutorial.zip" contains two folders: "Rmd-sample" and "latex-sample." 


### Git

Other than version control and workflow management, one motivation for using Git is that you can see your public repositories online at GitHub, which can display raw files like .tex, .Rmd, .md, and .txt that would not be displayed on Dropbox or Google Drive online. Here are my repositories containing the material for this session: [PO843-Rmd-sample](https://github.com/amikami102/PO843-Rmd-sample) and [PO843-latex-sample](https://github.com/amikami102/PO843-latex-sample).


If you want to download the sample files via Git, 

1. get `git` from [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) if you do not have it;
2. create a [GitHub account](https://github.com/join) if you have not already;
3. configure your GitHub username and email to `git` like so in your command line (Terminal in Mac and Command Prompt in Windows);
```
$ git config --global user.name "amikami102" 
$ git config --global user.mail "afmikami@bu.edu"
```
4. clone my repositories to wherever you want to save them like so in your command line.
```
$ git clone https://github.com/amikami102/PO843-latex-sample.git
$ git clone https://github.com/amikami102/PO843-Rmd-sample.git
```

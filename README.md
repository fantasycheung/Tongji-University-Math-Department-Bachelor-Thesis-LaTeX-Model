# What's this?
This is (Xe)LaTeX template for thesis of Tongji University, especially for the department of Mathmatics. Now, this template only can be used for bachelor.

#How to use it?
## Requirements
* A usable XeLateX instance. The latest [CTeX], [TeXLive] and [MacTeX] are all ok.
*  You computer should contain some avaiable Chinese fonts, especially the Songti, Heiti, Kaiti.

## Compile the document

* the .tex file are contained in 'data', like cover, absc, chapter, append, thanks.
* the pictures are contained in 'pic', .pdf and .eps are both ok. You can also convert other to eps.

 Type the following commands and a file named 'mian.pdf' will be generated.

	$ cd $YOUR_WORK_DIR
	$ xelatex main
	$ xelate main

If you have any trouble with this template, you can contact me <fantasycheung@gmail.com> .I'm willing to improve this template.
## PS:
For I add the logo on the headline, there are some warnings about the headline. I will try to solve this problem. If you have some better ideas, you can contact me and fix these problems.

##PSS:
I still try to add the bining line on the left side. But till now, I have failed. Maybe I should try the \savebox{} . I hope in the next version I can fix this problem.
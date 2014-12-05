# PhotoJournal

PhotoJournal is a multiuser photo/description database. I have implemented the imgur API for easy and smooth image handling. The application is an extension of Lab 6 in Quinn Rohlf's section of Networks. It can be found deployed at photojournal-kohl.herokuapp.com. The deployed version of this application is not working. It is working if run on your local machine!

## Features

- Easy image upload to imgur
- Description and date available to describe each photo
- Multi-user support
- Items in the database can be removed if desired


## Use
1. Clone repo
2. Fire it up with shotgun
3. Add a user if you wish, or use the pre-made profile
4. Scroll down to the bottom of this page and enter the description, date, and actual file path of the image
5. Glory glory!

## Notes
I learned from: stackoverflow.com/questions/81180/how-to-get-the-file-path-from-html-input-form-in-firefox-3 that when using the HTML filetype "file" in a form, the full path of the object is not given. This was a difficult bug to uncover! To get around this I opted for a text field in which the user enters the full path name of the image.

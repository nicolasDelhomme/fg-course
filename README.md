# Setup
1. Fork the repository
2. In `Settings` > `Pages`, select `Master` then `Save`
3. Navigate to the link indicated on the page, _e.g._ `https://<github username>.github.io/fg-course` - if it does not work, wait a while (and it might be you need to commit some content, so proceed below)
4. Edit the pages that have bschiffthaler / nicolasDelhomme and replace accordingly with your GitHub username
5. Edit the rest of the content, every push triggers a rebuild of the GH Pages

# Note
* The CourseIntro.html has a png that might need updating (just did it in Preview tbh); it is in img/Presentation2.png
* The Intro.html has a mentimeter test. You can log in to mentimeter.com with your umu credentials (select SSO and then `umu` as the organisation). From mentimeter, once you have the presentation, select share, presentation sharing, then click on the embed link. From that just extract the URL and replace it in the presentation (unless you know what you are doing and want to replace the whole iframe block)

* Shell.html uses tmate.io: https://tmate.io/. Install tmate on your computer, requires homebrew. Request an API key on the webpage, then start a session on your computer using: 

```{bash}
 tmate -k YOUR_API_KEY -r fg-course
```

It will start a read-only session on https://tmate.io/t/YOUR-USER/fg-course

`-r` is read-only. `-n` is for collaborative session. Make sure to read the info on security on the webpage!


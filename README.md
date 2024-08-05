# Résumé d'antfu

This is my Résumé generator. You can check out my Résumé [here](https://moha.sabur.it/files/cv/).

The theme is heavily modified from [jsonresume-theme-kwan](https://github.com/icoloma/jsonresume-theme-kwan).

## How it works

- The data is hosted on [Gist](https://gist.github.com/) using the [JSON Resume](https://jsonresume.org/) standard.
- The website is hosted on [Netlify](http://netlify.com/) with CI/CD.
- HTML is generated with [Handlebars](https://handlebarsjs.com/) and PDF is created with [puppeteer](https://github.com/puppeteer/puppeteer/).

> Note: I did a lot of quick hacks to make it suitable for my design, which may not be good for general use as a theme. While I may not have time to improve it, PRs are greatly welcome!

## Containerized Version

To build the containerized version of the project, you can build the image with the command:
```bash
docker build . -t myresume

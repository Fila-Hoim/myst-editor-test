---
numbering: 
  headings: false

---
# README

This is the TU Delft starterkit for open publishing with Jupyter Book. It provides a skeleton with basic settings to have a head start with your thesis / project.

It includes:
- a github deploy file taking care of deploying the website and building a pdf
- basic content files that can be altered to fit your project
- yml files in the root folder to configure the book and the pdf build


## ✏️ MyST editor test setup

This copy of the starterkit tests the MyST editor's GitHub backend before it is released.

- **The editor** is served at `https://fila-hoim.github.io/myst-editor-test/editor/` (once Pages is on). It runs the build packed in
  `editor-dist/`, installed by `plugins/editor-local.mjs`, and configured in `editor/options.js`.
- **A newer editor build:** run `./update-editor.sh` (it builds the `myst-editor` checkout next to this repository), commit
  `editor-dist/`, and push. `editor-dist/VERSION` says which build is in.
- **Publishing:** `.github/workflows/pages.yml` builds and publishes on every push to `main`, which includes every commit made in
  the editor. Switch Pages on once under Settings → Pages → Source: **GitHub Actions**.
- **Signing in:** with a fine-grained token for this repository (Contents: Read and write, Pull requests: Read-only); the editor's
  sign-in screen explains the steps.

## 🕵 Where to start
Already know about Jupyter Book, familiar with GitHub or GitLab, Markdown... start with cloning the [starterkit](https://github.com/new?template_name=starterkit&template_owner=TUD-JB-OS) and start writing working on your project. New to the ecosystem? Start with [the manual](https://jboss.tudelft.nl/manual), and then move on to the starterkit.


## 🏁 Purpose
The purpose of this project and this manual is to enable others to use Jupyter Book for writing and publishing their own scientific and educational content. We hope to lower the technical barrier for researchers and educators to create and share their own resources, and to promote open science and open education practices.

## 📄 License
This book is licensed under the [Creative Commons Attribution-NonCommercial 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/), unless stated otherwise.

You are free to:

* Share — copy and redistribute the material in any medium or format

* Adapt — remix, transform, and build upon the material for any non-commercial purpose provided proper attribution is given.

## ❌ Errors
If you find any errors in the content, please report them by opening an issue on the [GitHub repository](https://github.com/TUD-JB-OS/starterkit/issues).

## 💰 Funding
This project has received funding from the [Delft University of Technology Open Science Fund (2025-2026)](https://www.tudelft.nl/en/open-science/articles-tu-delft/mainstreaming-open-science-fund-2025-2026).

## ⭐ Identifier
TUDJBOSSTARTERKIT

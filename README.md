# WildGums.Docs

Documentation website for WildGums projects.

## Technologies used

The documentation website uses the static site generator [Hugo](https://gohugo.io/). This allows writing the documentation in markdown.

This guide will explain the basics on how to contribute to the WildGums documentation. For more information about Hugo, please visit the [Hugo documentation](https://gohugo.io/documentation/) site.

The easiest way to install Hugo is to use Chocolatey:

```
choco install hugo
```

The site uses the [DocDock theme](https://docdock.netlify.com/), which allows for the following customized shortcodes:

* [Alert](https://docdock.netlify.com/shortcodes/alert/)
* [Except](https://docdock.netlify.com/shortcodes/excerpt/)
* [Expand](https://docdock.netlify.com/shortcodes/expand/)
* [Mermaid](https://docdock.netlify.com/shortcodes/mermaid/)
* [Notice](https://docdock.netlify.com/shortcodes/notice/)
* [Panel](https://docdock.netlify.com/shortcodes/panel/)

## Automatically regenerated website

Thanks to GitHub Actions, the documentation site is automatically regenerated and published every time a commit (or merge) is done to the `master` branch.

## Simple contributions

The most simple contributions are edits to existing pages. This can be done by navigating to this repository or by using the `Improve this page` button which is available in the lower left corner on each page.

***Note that simple contributions will always happen on the `vNext` (latest) documentation.***

## Advanced contributions

***Note that this guide assumes that all advanced contributions are done in the `vNext` (latest) documentation section.***

For advanced scenarios, it's recommended to fork the repository and customize the content in `/src/vnext/`. This folder will be referenced to as the '`vNext` folder'.

### Running a local web server to test changes

To test local changes (with auto-refresh), navigate to the `vNext` folder and execute the following command using powershell:

```
hugo server -D
```

### Editing existing pages

To edit existing pages, open the existing page in your favorite markdown editor.

To keep the documentation consistent, please respect the following rules (alphabetically ordered).

#### Code blocks

Embed code inside code blocks using a ` or ```.

#### Headings

Start with level 2 (`##`) inside the pages. Level 1 (`#`) is reserved for page titles.

#### Links

Links to external or internal pages can be very useful.

For detailed information about links and references in Hugo, see the [official documentation](https://gohugo.io/content-management/cross-references/).

**Internal**

Internal links are relative to the `/src/vnext/content` directory.

`[SavableModelBase]({{< relref "catel-core/data-handling/savablemodelbase.md" >}})`

**External**

External links should contain the full URL:

`[Catel website]({{< ref "https://www.catelproject.com" >}})`

#### Images

Don't forget to use images if that makes it more clear. Further down this guide is a detailed explanation on how to add images.

#### Notes

Sometimes notes can add extra weight to something important. There are different kind of notes available. Please see the examples below.

**Tip**

```
{{% notice note %}}
A simple note that users should pay attention to, but is not mandatory
{{% /notice %}}
```

**Tip**

```
{{% notice tip %}}
This tip can be really useful if you are working with this class
{{% /notice %}}
```

**Info**

```
{{% notice warning %}}
This provides more info on why something is the way it is
{{% /notice %}}
```

**Warning**

```
{{% notice warning %}}
Users should really notice this and pay attention
{{% /notice %}}
```

### Adding new pages

Pages are managed in the `content` folder. To add a new page, navigate to the correct sub folder (e.g. `/src/vnext/content/catel-core/reflection`).

For example, to add a new page for the `BoxingCache`, navigate to the reflection folder and create a new file named `boxingcache.md`. Use the following content template:

```
+++
title = "Boxing cache" 
description = ""
weight = 30
+++

[CONTENT GOES HERE]

{{% notice warning %}}
More documentation should be written in the future
{{% /notice %}}
```

From this point, the page can be edited as any other page.

### Dealing with images and attachments

Attachments such as images are stored in the `/src/vnext/static/images` directory. The directory structure follows the exact same structure as the `content` directory to stay consistent.

The only exception is that pages are all put into the same section, but the static content has a separate folder **per page** (for example, a page can have multiple images).

#### Example of images for `_index.md`

```
/vNext
 |- content
    |- catel-core
       |- pooling
          |- _index.md
 |- static
    |- catel-core
       |- pooling
          |- hasobjects.png
```

Image can be used in `_index.md` using the following code:

```
![](../../images/catel-core/pooling/hasobjects.png)
```

#### Example of images for `_index.md`

```
/vNext
 |- content
    |- setup-deployment
       |- code-snippets-templates
          |- using-the-item-templates.md
 |- static
    |- setup-deployment
       |- code-snippets-templates
          |- using-the-item-templates
             |- usercontrol.png
```

Image can be used in `using-the-item-templates.md` using the following code:

```
![](../../../images/setup-deployment/code-snippets-templates/using-the-item-templates/usercontrol.png)
```
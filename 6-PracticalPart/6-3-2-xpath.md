# XPATH

---

## XPATH Meaning
- XPATH is using expressions to select nodes or nodesets of XML documents

```
ROOT                        /
  CHILD1                    /CHILD1
    content_child1          /CHILD1/content_child1  |  //content_child1
    end_content_child1
  ENDCHILD1
  CHILD2
    content_child2
    end_content_child2
  ENDCHILD2
  CHILD3
    content_child3
    end_content_child3
  ENDCHILD3
ENDROOT
```
---

## XPATH IN DOM
```
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>A Basic HTML5 Template</title>
  <meta name="description" content="A simple HTML5 Template for new projects.">
  <meta name="author" content="SitePoint">

  <meta property="og:title" content="A Basic HTML5 Template">
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://www.sitepoint.com/a-basic-html5-template/">
  <meta property="og:description" content="A simple HTML5 Template for new projects.">
  <meta property="og:image" content="image.png">

  <link rel="icon" href="/favicon.ico">
  <link rel="icon" href="/favicon.svg" type="image/svg+xml">
  <link rel="apple-touch-icon" href="/apple-touch-icon.png">

  <link rel="stylesheet" href="css/styles.css?v=1.0">

</head>

<body>
  <!-- your content here... -->
  <script src="js/scripts.js"></script>
</body>
</html>
```

- DOM stands for Document object model
- XML representation of web page

---


## XPATH selectors examples 1

| Selector | Meaning |
| -------- | ----    |
| // | anywhere |
| / | root |
| //*      | all descendant of root |
| /input//* | all descendant of input in root |
| /input/* | only all direct descendants | 
| //*[@id="10"] | any descendant that has id of 10  (#10) |
| //*[@class="main"] | any descendant that has class of main  (.main) |

---

## XPATH selectors examples 2

| Selector | Meaning |
| -------- | ----    |
| /h1[not(@id)] | root descendant/s that dont have id attribute |
| /h1[text() = "Hello"] | H1 header that have text exact match to "Hello" |
| /h1[contains(text(), "ello")] | H1 header that contains text of "^.*ello.*$"
| ./h1 | H1 header relative to actual element | 
| //h1[not(@id) or not(@class)] | any h1 header that does not have id or class attribute |
| //h1 &#124; //h2 | Union of selectors, all //h1 and //h2 headers | 
| (//h1)[1]/a[@href] | First found H1 header and select his siblings tags a, that does not have href attribute |

---

## Where to go next
- [W3School](https://www.w3schools.com/xml/xpath_syntax.asp)
- [guru99](https://www.guru99.com/using-contains-sbiling-ancestor-to-find-element-in-selenium.html)
- [CheatSheet](https://devhints.io/xpath)
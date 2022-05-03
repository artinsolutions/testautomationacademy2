# RF Selectors

---

## Selectors 1

| Strategy | Match based on | Example |
| -------- | -------------- | ------- |
| name     | name attribute.| name:example |
| identifier | Either id or name. | identifier:example | 
| class | Element class. | class:example | 
| tag | Tag name. | tag:div |
| xpath | XPath expression. | xpath://div[@id="example"] | 
| css | CSS selector. | css:div#example | 
| dom | DOM expression. | dom:document.images[5] |

---

## Selectors 2

| Strategy | Match based on | Example |
| -------- | -------------- | ------- |
| link | Exact text a link has. | link:The example | 
| partial link | Partial link text. | partial link:he ex |
| sizzle | Sizzle selector deprecated. | sizzle:div.example |
| jquery | jQuery expression. | jquery:div.example |
| default | Keyword specific default behavior. | default:example | 




part of ednet_core_gen;

void genDomainModelWeb(File file) {
  addText(file, genEDNetWeb(ednetCoreModel));
}

void genDomainModelWebHtml(File file) {
  var text = '''
<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="author" content="Dzenan Ridjanovic"/>
    <title>
      ${domainName}_${modelName}, developed with ednet_core.
    </title>
    <link rel="stylesheet" href="css/layout.css"/>
    <link rel="stylesheet" href="css/layout2.css"/>
    <link rel="stylesheet" href="css/link.css"/>
    <link rel="stylesheet" href="css/list.css"/>
    <link rel="stylesheet" href="css/menu.css"/>
    <link rel="stylesheet" href="css/page.css"/>
    <link rel="stylesheet" href="css/table.css"/>
  </head>
  <body>
    <header>
      <h2>
        ${domainName}_${modelName} in Dart with ednet_core
      </h2>
    </header>

    <section id="main">
      <header id='menu'/></header>
      <section id='entities'/></section>
      <footer>
        <a href="https://plus.google.com/+OndartMe">
          <img src="https://dl.dropbox.com/u/161496/dart/img/ondart3.png"/>
        </a>
        &nbsp;
        <a class="button" href="http://dzenanr.github.io/">
          On Dart Blog
        </a>
      </footer>
    </section>

    <section id="side">
      <p>
        <span class="drop">The</span> ${domainName}_${modelName} app in
        <a  href="https://www.dartlang.org/" class="link">
          Dart.
        </a>
      </p>
      <p>
        <img src="img/${domainName}_${modelName}.png"/>
        The model is designed with
        <a  href="https://github.com/ednet-dev/model_concepts" class="link">
          Model Concepts.
        </a>
        The model code is generated by
        <a  href="https://github.com/ednet-dev/ednet_core_gen" class="link">
          ednet_core_gen.
        </a>
        The app
        <a  href="https://github.com/ednet-dev/${domainName}_${modelName}" class="link">
          code
        </a>
        is maintained at
        <a  href="https://github.com/" class="link">
          GitHub.
        </a>
      </p>
    </section>

    <script type="application/dart" src="${domainName}_${modelName}_web.dart"></script>
    <script src="packages/browser/dart.js"></script>
  </body>
</html>
  ''';
  addText(file, text);
}

void genLayout(File file) {
  var text = '''
/* layout.css */

/* ===[ begin ]=== */

/*
  Title:                   Basic Layout Design Style
  Author:                  Dzenan Ridjanovic
  Influenced By:
  http://www.ehow.com/how_12007718_scroll-inside-html-canvas.html
  Created:                 2006-09-03
  Updated:                 2012-05-16
*/

  header {
    color: #663117;
    padding: 2px;
    background: #d7e9f7;
    text-align: center;
  }

  footer {
    font-family: arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    color: #ffffff;
    background: #663117;
    padding: 8px;
    border-top: 2px solid #999999;
  }

/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genLayout2(File file) {
  var text = '''
/* layout2c.css */

/* ===[ begin ]=== */

/*
  Title:                   2 Columns Layout Design Style
  Author:                  Dzenan Ridjanovic
  Influenced By:           http://www.simplebits.com/
  Created:                 2006-09-03
  Updated:                 2011-12-09
*/

/* ===[ 2 columns layout ]=== */

  #main {
    float: left;
    width: 60%;
    background: #fffff0;
  }

  #side {
    float: right;
    width: 36%;
  }

/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genLink(File file) {
  var text = '''
/* link.css */

/* ===[ begin ]=== */

/*
  Title:                   Link Design Style
  Author:                  Dzenan Ridjanovic
  Influenced By:           http://www.simplebits.com/
  Created:                 2006-09-03
  Updated:                 2011-12-23
*/

  a:link {
    text-decoration: none;
    font-weight: bold;
    color: #003366;
  }

  a:visited {
    text-decoration: none;
    font-weight: bold;
    color: #c50000;
  }

  a:hover {
    text-decoration: none;
    color: #d9ece2;
    background: #663117;
  }

  .button {
    padding: 1px;
    background: #ffcc99;
    border-right: 1px solid #999;
    border-bottom: 1px solid #999;
    border-style: outset;
    border-color: #d7b9c9;
    font-weight: bold;
    text-align: center;
  }


/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genList(File file) {
  var text = '''
/* list.css */

/* ===[ begin ]=== */

/*
  Title:                   List Design Style
  Author:                  Dzenan Ridjanovic
  Influenced By:           http://www.simplebits.com/
  Created:                 2006-09-09
  Updated:                 2011-12-08
*/

  ul {
    list-style: none;
    padding: 2px;
    text-align: left;
  }

  li {
    padding-top: 1px;
    padding-bottom: 1px;
    padding-left: 18px;
  }

  .link li {
    background: url(https://dl.dropbox.com/u/161496/dart/img/arrow-right.gif) no-repeat 0 50%;
    padding-top: 1px;
    padding-bottom: 1px;
    padding-left: 18px;
  }

  .target li {
    background: url(https://dl.dropbox.com/u/161496/dart/img/target.gif) no-repeat 0 50%;
    padding-top: 1px;
    padding-bottom: 1px;
    padding-left: 18px;
  }

/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genMenu(File file) {
  var text = '''
/* menu.css */

/* ===[ begin ]=== */

/*
  Title:                  Menu Design Style
  Author:                 Dzenan Ridjanovic
  Influenced By:
    http://www.devinrolsen.com/pure-css-horizontal-menu/
  Created:                2011-12-22
  Updated:                2012-01-04
*/

/* ===[ horizontal menu bar with menus and menu items ]=== */

  nav {
    width: 100%;
    height: 30px;
    font-weight: bold;
    color: #ffffff;
    background-color: #663117;
    border-top: 2px solid #999999;
  }

  nav ul {
    margin: 0px;
    padding: 0px;
  }

  nav ul li {
    display: inline;
    height: 30px;
    float: left;
    list-style: none;
    margin-left: 15px;
    position: relative;
  }

  nav ul li:hover {
    color: #d9ece2;
  }

  nav li ul {
    margin: 0px;
    padding-top: 8px;
    display: none;
    position: absolute;
    left: 0px;
    top: 20px;
    font-size: 14px;
    color: #d9ece2;
    background-color: #663117;
  }

  nav li:hover ul {
    display: block;
    width: 180px;
  }

  nav li li {
    padding: 0px;
    color: #ffffff;
    list-style: none;
    display: list-item;
  }

  nav li li a:link {
    text-decoration: none;
    font-weight: bold;
    color: #e6ffc8;
  }

  nav li li a:visited {
    text-decoration: none;
    font-weight: bold;
    color: #f2e1fb;
  }

  nav li li a:hover {
    text-decoration: none;
    color: #663117;
    background: #d9ece2;
  }

  nav li li button {
    color: #663117;
    font-size: 14px;
    font-weight: bold;
    background-color: #ffffff;
  }

  nav li li button:hover {
    background-color: #d9ece2;
  }

/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genPage(File file) {
  var text = '''
/* page.css */

/* ===[ begin ]=== */

/*
  Title:                   Web Page Design Style
  Author:                  Dzenan Ridjanovic
  Influenced By:           http://www.simplebits.com/
  Created:                 2006-09-03
  Updated:                 2012-05-16
*/

  body {
    font-family: verdana, arial, helvetica, sans-serif;
    font-size: 16px;
    background: #d9ece2;
    width: 1000px;
    margin-left: auto;
    margin-right: auto;
    padding:10px;
  }

  section {
    padding: 5px;
  }

  p {
    line-height: 1.5em;
    text-align: justify;
    margin-left: 2px;
    margin-right: 2px;
  }

  .drop {
    float: left;
    font-size: 150%;
    line-height: 1em;
    margin: 4px 8px 8px 0px;
    padding: 4px 8px;
    border: 2px solid #cccccc;
    background: #fffff0;
  }

/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genTable(File file) {
  var text = '''
/* table.css */

/* ===[ begin ]=== */

/*
    Title:                   Table Design Style
    Author:                  Dzenan Ridjanovic
    Influenced By:           http://www.simplebits.com/
    Created:                 2006-09-03
    Updated:                 2012-08-29
*/

  table {
    border-top: 1px solid #999;
    border-left: 1px solid #999;
    border-collapse: collapse;
    margin-left: auto;
    margin-right: auto;
  }

  caption {
    font-family: arial, sans-serif;
    font-size: 14px;
    font-weight: bold;
    color: #003366;
    padding: 6px;
    margin-left: auto;
    margin-right: auto;
  }

  th, td {
    padding: 4px;
    border-right: 1px solid #999;
    border-bottom: 1px solid #999;
  }

  th {
    font-family: Verdana, sans-serif;
    font-weight: bold;
    color: #ffffff;
        background: #663117;
  }

  td {
    background: #ffe4b5;
  }

/* ===[ end ]=== */
  ''';
  addText(file, text);
}

void genWeb(String path) {
  var webPath = '${path}/web';
  genDir(webPath);

  var cssPath = '${webPath}/css';
  genDir(cssPath);

  var cssImgPath = '${cssPath}/img';
  genDir(cssImgPath);

  var imgPath = '${webPath}/img';
  genDir(imgPath);

  var domainPath = '${webPath}/${domainName}';
  genDir(domainPath);

  var modelPath = '${domainPath}/${modelName}';
  genDir(modelPath);
  File domainModelWeb =
      genFile('${modelPath}/${domainName}_${modelName}_web.dart');
  genDomainModelWeb(domainModelWeb);
  File domainModelWebHtml =
      genFile('${modelPath}/${domainName}_${modelName}_web.html');
  genDomainModelWebHtml(domainModelWebHtml);

  var modelCssPath = '${modelPath}/css';
  genDir(modelCssPath);
  File layout = genFile('${modelCssPath}/layout.css');
  genLayout(layout);
  File layout2 = genFile('${modelCssPath}/layout2.css');
  genLayout2(layout2);
  File link = genFile('${modelCssPath}/link.css');
  genLink(link);
  File list = genFile('${modelCssPath}/list.css');
  genList(list);
  File menu = genFile('${modelCssPath}/menu.css');
  genMenu(menu);
  File page = genFile('${modelCssPath}/page.css');
  genPage(page);
  File table = genFile('${modelCssPath}/table.css');
  genTable(table);

  var modelCssImgPath = '${modelCssPath}/img';
  genDir(modelCssImgPath);

  var modelImgPath = '${modelPath}/img';
  genDir(modelImgPath);
}

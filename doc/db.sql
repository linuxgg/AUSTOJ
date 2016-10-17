/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.24 : Database - phonecollectiondb
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE = '' */;

/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS */`phonecollectiondb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `phonecollectiondb`;

/*Table structure for table `article` */

CREATE TABLE `article` (
  `id`         INT(11) NOT NULL AUTO_INCREMENT,
  `title`      VARCHAR(255)     DEFAULT NULL,
  `user_id`    INT(11)          DEFAULT NULL,
  `nickname`   VARCHAR(30)      DEFAULT NULL,
  `summary`    TEXT,
  `content`    TEXT,
  `tags`       VARCHAR(255)     DEFAULT NULL,
  `catelog`    VARCHAR(255)     DEFAULT NULL,
  `start_time` DATE             DEFAULT NULL,
  `totop`      TINYINT(1)       DEFAULT '0',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;

/*Data for the table `article` */

LOCK TABLES `article` WRITE;

INSERT INTO `article` (`id`, `title`, `user_id`, `nickname`, `summary`, `content`, `tags`, `catelog`, `start_time`, `totop`)
VALUES (1, '剑指offer面试题3--二维数组中查找', 1, '牛李',
        '前言:从最近的比赛中,真的可以看出来自己做题目太少了,一些常见的算法,思路都不怎么会,接下来要好好努力了题目:分析: 书中给的分析思路很好,要解决一个复杂的问题,最有效的方法就是从一个具体的问题入手,这道题就可以举例子,查找7这个元素,首先从右上角开始,9比7大,所以9所在的列不会有,查找8,比7大,所以8所在的这一列没有,如此这样我们只需要查找第一行元素,然后根据与7的大小比较,再判断是否查询对...',
        '<div id=\"article_content\" class=\"article_content\">\r\n        <div class=\"markdown_views\"><p>前言:从最近的比赛中,真的可以看出来自己做题目太少了,一些常见的算法,思路都不怎么会,接下来要好好努力了</p>\r\n\r\n\r\n\r\n<h2 id=\"题目\">题目:</h2>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160604210715030\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>分析: <br>\r\n书中给的分析思路很好,要解决一个复杂的问题,最有效的方法就是从一个具体的问题入手,这道题就可以举例子,查找7这个元素,首先从右上角开始,9比7大,所以9所在的列不会有,查找8,比7大,所以8所在的这一列没有,如此这样我们只需要查找第一行元素,然后根据与7的大小比较,再判断是否查询对应的列,如此思路就很清晰了</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs java\"><span class=\"hljs-keyword\">package</span> com.mrdear;\r\n\r\n<span class=\"hljs-javadoc\">/**\r\n * 查找二维数组指定数\r\n */</span>\r\n<span class=\"hljs-keyword\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Main</span> {</span>\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">void</span> <span class=\"hljs-title\">main</span>(String[] args) {\r\n\r\n        <span class=\"hljs-keyword\">int</span>[][] arr = {\r\n                {<span class=\"hljs-number\">1</span>, <span class=\"hljs-number\">2</span>, <span class=\"hljs-number\">8</span>, <span class=\"hljs-number\">9</span>},\r\n                {<span class=\"hljs-number\">2</span>, <span class=\"hljs-number\">4</span>, <span class=\"hljs-number\">9</span>, <span class=\"hljs-number\">12</span>},\r\n                {<span class=\"hljs-number\">4</span>, <span class=\"hljs-number\">7</span>, <span class=\"hljs-number\">10</span>, <span class=\"hljs-number\">13</span>},\r\n                {<span class=\"hljs-number\">6</span>, <span class=\"hljs-number\">8</span>, <span class=\"hljs-number\">11</span>, <span class=\"hljs-number\">15</span>}\r\n        };\r\n\r\n        <span class=\"hljs-keyword\">int</span> num = <span class=\"hljs-number\">2</span>;<span class=\"hljs-comment\">//要查找的数字</span>\r\n\r\n        <span class=\"hljs-comment\">//从右上角开始查</span>\r\n        <span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> i = arr[<span class=\"hljs-number\">0</span>].length - <span class=\"hljs-number\">1</span>; i &gt;= <span class=\"hljs-number\">0</span>; i--) {\r\n            <span class=\"hljs-comment\">//如果当前数大于指定数,则没必要查当前列了</span>\r\n            <span class=\"hljs-keyword\">if</span> (arr[<span class=\"hljs-number\">0</span>][i] &gt;= num) {\r\n                <span class=\"hljs-keyword\">if</span> (arr[<span class=\"hljs-number\">0</span>][i] == num)\r\n                    System.out.println(<span class=\"hljs-string\">\"横坐标:\"</span> + <span class=\"hljs-number\">0</span> + <span class=\"hljs-string\">\"---纵坐标:\"</span> + i);\r\n            } <span class=\"hljs-keyword\">else</span> {<span class=\"hljs-comment\">//查询当前列</span>\r\n                findNum(arr, i, num);\r\n            }\r\n        }\r\n\r\n    }\r\n    <span class=\"hljs-javadoc\">/**\r\n     * 查询指定列上是否有num\r\n     *\r\n     *<span class=\"hljs-javadoctag\"> @param</span> arr 查询的目标数组\r\n     *<span class=\"hljs-javadoctag\"> @param</span> i   指定列\r\n     *<span class=\"hljs-javadoctag\"> @param</span> num 要查询的数\r\n     */</span>\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">void</span> <span class=\"hljs-title\">findNum</span>(<span class=\"hljs-keyword\">int</span>[][] arr, <span class=\"hljs-keyword\">int</span> i, <span class=\"hljs-keyword\">int</span> num) {\r\n        <span class=\"hljs-comment\">//折半查找</span>\r\n        <span class=\"hljs-keyword\">int</span> start = <span class=\"hljs-number\">0</span>,end = arr.length-<span class=\"hljs-number\">1</span>,mid;\r\n        <span class=\"hljs-keyword\">while</span> (start &lt; end){\r\n            mid = (start + end)/<span class=\"hljs-number\">2</span>;\r\n            <span class=\"hljs-keyword\">if</span> (arr[mid][i] &gt; num){\r\n                end = mid-<span class=\"hljs-number\">1</span>;\r\n            }<span class=\"hljs-keyword\">else</span> <span class=\"hljs-keyword\">if</span> (arr[mid][i] &lt; num){\r\n                start = mid+<span class=\"hljs-number\">1</span>;\r\n            }<span class=\"hljs-keyword\">else</span> {\r\n                System.out.println(<span class=\"hljs-string\">\"横坐标:\"</span> + mid + <span class=\"hljs-string\">\"---纵坐标:\"</span> + i);\r\n                <span class=\"hljs-keyword\">return</span>;\r\n            }\r\n        }\r\n    }\r\n}</code></pre></div>\r\n        <script  type=\"text/javascript\">\r\n            $(function () {\r\n                $(\'pre.prettyprint code\').each(function () {\r\n                    var lines = $(this).text().split(\'\\n\').length;\r\n                    var $numbering = $(\'<ul/>\').addClass(\'pre-numbering\').hide();\r\n                    $(this).addClass(\'has-numbering\').parent().append($numbering);\r\n                    for (i = 1; i <= lines; i++) {\r\n                        $numbering.append($(\'<li/>\').text(i));\r\n                    };\r\n                    $numbering.fadeIn(1700);\r\n                });\r\n            });\r\n        </script>\r\n   \r\n</div>\r\n',
        '面试', '剑指offer', '2016-06-11', 0), (2, '剑指offer面试题2--实现singleton模式', 1, '牛李',
                                            '最近开始准备面试,并且复习之前的知识,一步一步总结1.不好的写法一/** * 饿汉式,也就是很常见的一种方法 */ public class Singleton { //这里就体现出饿汉,只要用了这个类,就会加载一个相应的instance实例 private static final Singleton instance = new Singleton(); private...',
                                            '<div id=\"article_content\" class=\"article_content\">\r\n        <div class=\"markdown_views\"><p>最近开始准备面试,并且复习之前的知识,一步一步总结</p>\r\n\r\n\r\n\r\n<h1 id=\"1不好的写法一\">1.不好的写法一</h1>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs java\"><span class=\"hljs-javadoc\">/**\r\n * 饿汉式,也就是很常见的一种方法\r\n */</span>\r\n<span class=\"hljs-keyword\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Singleton</span> {</span>\r\n    <span class=\"hljs-comment\">//这里就体现出饿汉,只要用了这个类,就会加载一个相应的instance实例</span>\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">final</span> Singleton instance = <span class=\"hljs-keyword\">new</span> Singleton();\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-title\">Singleton</span>(){}\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> Singleton <span class=\"hljs-title\">getInstance</span>(){\r\n        <span class=\"hljs-keyword\">return</span> instance;\r\n    }\r\n}</code></pre>\r\n\r\n<p>之所以不好,是因为没有做到按需加载,当前写法只要你使用了这个Singleton类,就会加载一个相应的instance实例,如果创建instance消耗很大的话,那这种方法就不可取. <br>\r\n不过这种方法保证了线程安全.</p>\r\n\r\n\r\n\r\n<h1 id=\"2不好的写法二\">2.不好的写法二</h1>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs java\"><span class=\"hljs-javadoc\">/**\r\n *  懒汉式,也就是很常见的一种方法\r\n */</span>\r\n<span class=\"hljs-keyword\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Singleton</span> {</span>\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> Singleton instance = <span class=\"hljs-keyword\">null</span>;\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-title\">Singleton</span>(){}\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> Singleton <span class=\"hljs-title\">getInstance</span>(){\r\n        <span class=\"hljs-keyword\">if</span> (instance == <span class=\"hljs-keyword\">null</span>){\r\n            instance = <span class=\"hljs-keyword\">new</span> Singleton();\r\n        }\r\n        <span class=\"hljs-keyword\">return</span> instance;\r\n    }\r\n}</code></pre>\r\n\r\n<p>在getInstance里面加个判断,如果当前对象未初始化,则初始化,否则直接返回,这样就实现了按需加载,也就是懒汉式了,不过这里又会出现多线程问题,如果一个线程执行到<code>instance = new Singleton();</code>,另一个线程执行到<code>if (instance == null)</code>,那么就会创建两个实例</p>\r\n\r\n\r\n\r\n<h1 id=\"3不好的写法三\">3.不好的写法三</h1>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs java\"><span class=\"hljs-javadoc\">/**\r\n * 引入锁来控制多线程问题\r\n */</span>\r\n<span class=\"hljs-keyword\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Singleton</span> {</span>\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> Singleton instance = <span class=\"hljs-keyword\">null</span>;\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-title\">Singleton</span>(){}\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> Singleton <span class=\"hljs-title\">getInstance</span>(){\r\n        <span class=\"hljs-keyword\">synchronized</span> (Singleton.class){\r\n            <span class=\"hljs-keyword\">if</span> (instance == <span class=\"hljs-keyword\">null</span>){\r\n                instance = <span class=\"hljs-keyword\">new</span> Singleton();\r\n            }\r\n        }\r\n        <span class=\"hljs-keyword\">return</span> instance;\r\n    }\r\n}</code></pre>\r\n\r\n<p>按照多线程问题解决方法,哪里不安全就同步哪里,所以使用<code>synchronized (Singleton.class)</code>同步下if语句块,这样就实现了多线程安全,并且还是按需加载,但是”80%的错误都是由20%代码优化引起的”,这样做的结果就是效率低下,每次使用instance都需要判断是否锁定状态,然而同步总是那么的费时</p>\r\n\r\n\r\n\r\n<h1 id=\"4好的写法一\">4.好的写法一</h1>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs java\"><span class=\"hljs-javadoc\">/**\r\n * 针对不好的写法一的改进\r\n */</span>\r\n<span class=\"hljs-keyword\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Singleton</span> {</span>\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Single</span>{</span>\r\n        <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">final</span> Singleton instance = <span class=\"hljs-keyword\">new</span> Singleton();\r\n    }\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-title\">Singleton</span>(){}\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> Singleton <span class=\"hljs-title\">getinstance</span>(){\r\n        <span class=\"hljs-keyword\">return</span> Single.instance;\r\n    }\r\n}</code></pre>\r\n\r\n<p>得益于java的类加载机制,只有用到的时候才会加载,所以实现了延迟加载,只有用到getinstance方法的时候才会去创建instance,并且静态内部类保证了只会创建一次该实例</p>\r\n\r\n<h1 id=\"5好的写法二jdk15\">5.好的写法二(JDK&gt;=1.5)</h1>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs java\"><span class=\"hljs-javadoc\">/**\r\n * 针对不好的写法三的改进\r\n */</span>\r\n<span class=\"hljs-keyword\">public</span> <span class=\"hljs-class\"><span class=\"hljs-keyword\">class</span> <span class=\"hljs-title\">Singleton</span> {</span>\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">volatile</span> Singleton instance = <span class=\"hljs-keyword\">null</span>;\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-title\">Singleton</span>(){}\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> Singleton <span class=\"hljs-title\">getInstance</span>(){\r\n        <span class=\"hljs-keyword\">if</span> (instance == <span class=\"hljs-keyword\">null</span>){\r\n            <span class=\"hljs-keyword\">synchronized</span> (Singleton.class){\r\n                <span class=\"hljs-keyword\">if</span> (instance == <span class=\"hljs-keyword\">null</span>){\r\n                    instance = <span class=\"hljs-keyword\">new</span> Singleton();\r\n                }\r\n            }\r\n        }\r\n        <span class=\"hljs-keyword\">return</span> instance;\r\n    }\r\n}</code></pre>\r\n\r\n<p>双重null判断,最外层的null判断解决了不好的写法三遗留的效率问题,同时内部<code>synchronized (Singleton.class)</code>保证了多线程的安全. <br>\r\n注意要对instance使用volatile修饰,用来确保将变量的更新操作通知到其他线程,保证了新值能立即同步到主内存,以及每次使用前立即从主内存刷新.当把变量声明为volatile类型后,编译器与运行时都会注意到这个变量是共享的.</p>\r\n\r\n\r\n\r\n<h1 id=\"6好的写法三jdk15\">6.好的写法三(JDK&gt;=1.5)</h1>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs cs\"><span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">enum</span> Singleton{\r\n\r\n    INSTANCE;\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">int</span> <span class=\"hljs-title\">max</span>(<span class=\"hljs-keyword\">int</span> a,<span class=\"hljs-keyword\">int</span> b){\r\n        <span class=\"hljs-keyword\">return</span> a&gt;b?a:b;\r\n    }\r\n}</code></pre>\r\n\r\n<p>这种方式是Effective Java作者Josh Bloch 提倡的方式，它不仅能避免多线程同步问题，而且还能防止反序列化重新创建新的对象，可谓是很坚强的壁垒啊，个人很喜欢,简单明了</p></div>\r\n        <script  type=\"text/javascript\">\r\n            $(function () {\r\n                $(\'pre.prettyprint code\').each(function () {\r\n                    var lines = $(this).text().split(\'\\n\').length;\r\n                    var $numbering = $(\'<ul/>\').addClass(\'pre-numbering\').hide();\r\n                    $(this).addClass(\'has-numbering\').parent().append($numbering);\r\n                    for (i = 1; i <= lines; i++) {\r\n                        $numbering.append($(\'<li/>\').text(i));\r\n                    };\r\n                    $numbering.fadeIn(1700);\r\n                });\r\n            });\r\n        </script>\r\n   \r\n</div>\r\n\r\n',
                                            '面试,数组', '剑指offer', '2016-06-11', 1), (3, 'Maven学习记录(四)--多模块开发配置', 1, '牛李',
                                                                                   '多模块的好处就是协同开发,对于大的项目这样分工可以提高效率,同时减轻代码耦合,看起来也一目了然,maven多模块还解决了不同人开发使用的架包版本冲突等问题一.创建项目1.创建父级容器不要使用模板,直接创建,创建后就可以直接把src目录删除,这个容器是用来承载其他子项目的2.创建子项目直接对着父项目右键,然后创建module,选择你需要用到的模板3.创建后IDEA生成的配置首先是目录结构, 对应的m...',
                                                                                   '<div id=\"article_content\" class=\"article_content\">\r\n        <div class=\"markdown_views\"><p>多模块的好处就是协同开发,对于大的项目这样分工可以提高效率,同时减轻代码耦合,看起来也一目了然,maven多模块还解决了不同人开发使用的架包版本冲突等问题</p>\r\n\r\n\r\n\r\n<h1 id=\"一创建项目\">一.创建项目</h1>\r\n\r\n\r\n\r\n<h3 id=\"1创建父级容器\">1.创建父级容器</h3>\r\n\r\n<p>不要使用模板,直接创建,创建后就可以直接把src目录删除,这个容器是用来承载其他子项目的</p>\r\n\r\n\r\n\r\n<h3 id=\"2创建子项目\">2.创建子项目</h3>\r\n\r\n<p>直接对着父项目右键,然后创建module,选择你需要用到的模板</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160602210838904\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n\r\n\r\n<h3 id=\"3创建后idea生成的配置\">3.创建后IDEA生成的配置</h3>\r\n\r\n<p>首先是目录结构, <br>\r\n<img src=\"http://img.blog.csdn.net/20160602211116014\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>对应的maven结构,root代表父项目</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160602211218250\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>父项目的pom.xml,IDEA很智能的把要配置的都配置完整了</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\"><span class=\"hljs-pi\">&lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;</span>\r\n<span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">project</span> <span class=\"hljs-attribute\">xmlns</span>=<span class=\"hljs-value\">\"http://maven.apache.org/POM/4.0.0\"</span>\r\n         <span class=\"hljs-attribute\">xmlns:xsi</span>=<span class=\"hljs-value\">\"http://www.w3.org/2001/XMLSchema-instance\"</span>\r\n         <span class=\"hljs-attribute\">xsi:schemaLocation</span>=<span class=\"hljs-value\">\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd\"</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">modelVersion</span>&gt;</span>4.0.0<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">modelVersion</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>com.mrdear<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>module_main<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!--pom类型表示当前项目是一个父项目--&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">packaging</span>&gt;</span>pom<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">packaging</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>1.0-SNAPSHOT<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!--modules用来定义当前模块的项目列表--&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">modules</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">module</span>&gt;</span>maven-parent<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">module</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">module</span>&gt;</span>maven-entity<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">module</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">module</span>&gt;</span>maven-core<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">module</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">module</span>&gt;</span>maven-web<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">module</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">modules</span>&gt;</span>\r\n\r\n\r\n<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">project</span>&gt;</span></code></pre>\r\n\r\n<p>子项目的pom.xml</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\"><span class=\"hljs-pi\">&lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;</span>\r\n<span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">project</span> <span class=\"hljs-attribute\">xmlns</span>=<span class=\"hljs-value\">\"http://maven.apache.org/POM/4.0.0\"</span>\r\n         <span class=\"hljs-attribute\">xmlns:xsi</span>=<span class=\"hljs-value\">\"http://www.w3.org/2001/XMLSchema-instance\"</span>\r\n         <span class=\"hljs-attribute\">xsi:schemaLocation</span>=<span class=\"hljs-value\">\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd\"</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!--表示当前继承与这个maven坐标对应的项目--&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">parent</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>module_main<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>com.mrdear<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>1.0-SNAPSHOT<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">parent</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">modelVersion</span>&gt;</span>4.0.0<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">modelVersion</span>&gt;</span>\r\n<span class=\"hljs-comment\">&lt;!--打包类型没配置,默认为jar--&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>maven-entity<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n\r\n\r\n<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">project</span>&gt;</span></code></pre>\r\n\r\n<p>到此整个多模块就算创建完毕了,不得不说用IDEA实在是太方便了,总结一下 <br>\r\n1. 创建父项目 <br>\r\n2. 创建子项目 <br>\r\n3. 父项目设置打包类型packaging为pom,表示为父项目,并且使用modules标签管理子项目 <br>\r\n4. 子项目使用parent标签来继承父项目</p>\r\n\r\n<hr>\r\n\r\n\r\n\r\n<h1 id=\"二使用dependencymanagement管理依赖\">二.使用dependencyManagement管理依赖</h1>\r\n\r\n<p>在 pom 中指明 dependencymanagement 元素的方式 maven 结合项目继承来管理依赖。在多模块应用中，可能多个子项目会有共同的依赖。此时为了正确运行，必须让所有的子项目使用依赖项的同一版本。必须确保应用的各个项目的依赖项和版本一致，才能保证测试的和发布的是相同的成果。因此，应在顶层的 pom 中定义共同的依赖关系。</p>\r\n\r\n<p>与dependencys不同的是在项目中虽然子项目继承了这个pom文件,但是只有显示的声明引入,才会真正的引入,并不是像dependencys这样全部引入继承的包. <br>\r\n换句话说<strong>dependencyManagement只会影响现有依赖的配置，但不会引入依赖</strong></p>\r\n\r\n<p>例如在主项目中配置:</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\">    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependencyManagement</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependencies</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n                <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>junit<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n                <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>junit<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n                <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>4.10<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n                <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">scope</span>&gt;</span>test<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">scope</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependencies</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependencyManagement</span>&gt;</span></code></pre>\r\n\r\n<p>子项目中引入:</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\">    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependencies</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>junit<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>junit<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependencies</span>&gt;</span></code></pre>\r\n\r\n<p>这样就保证了所有的子项目使用的包都是同一版本的</p>\r\n\r\n<hr>\r\n\r\n\r\n\r\n<h1 id=\"三使用pluginmanagement管理插件\">三.使用pluginManagement管理插件</h1>\r\n\r\n<p>pluginManagement和dependencyManagement不同,配置完成后,子项目<strong>直接继承使用</strong>,可以通过effectivePom查看,所以一般配置公共的插件,如编译版本,编码之类的.</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">build</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">pluginManagement</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">plugins</span>&gt;</span>\r\n                <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">plugin</span>&gt;</span>\r\n                    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.apache.maven.plugins<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n                    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>maven-compiler-plugin<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n                    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>2.3.2<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n                    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">configuration</span>&gt;</span>\r\n                        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">source</span>&gt;</span>1.8<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">source</span>&gt;</span>\r\n                        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">target</span>&gt;</span>1.8<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">target</span>&gt;</span>\r\n                        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">encoding</span>&gt;</span>UTF-8<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">encoding</span>&gt;</span>\r\n                    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">configuration</span>&gt;</span>\r\n                <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">plugin</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">plugins</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">pluginManagement</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">build</span>&gt;</span></code></pre>\r\n\r\n<p>直接在父项目中如上配置,子项目就可以直接使用这个插件,无需配置了.</p>\r\n\r\n\r\n\r\n<h1 id=\"四项目间互相依赖\">四.项目间互相依赖</h1>\r\n\r\n<p>直接使用dependency标签配置即可,把子项目就当成jar包用就好了,如下面就是增加entity实体的依赖,这样做的好处就是协同开发,不同的人写不同的模块</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\">  <span class=\"hljs-comment\">&lt;!--配置子项目依赖--&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>com.mrdear<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>maven-entity<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n            <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>1.0-SNAPSHOT<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n        <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span></code></pre></div>\r\n        <script  type=\"text/javascript\">\r\n            $(function () {\r\n                $(\'pre.prettyprint code\').each(function () {\r\n                    var lines = $(this).text().split(\'\\n\').length;\r\n                    var $numbering = $(\'<ul/>\').addClass(\'pre-numbering\').hide();\r\n                    $(this).addClass(\'has-numbering\').parent().append($numbering);\r\n                    for (i = 1; i <= lines; i++) {\r\n                        $numbering.append($(\'<li/>\').text(i));\r\n                    };\r\n                    $numbering.fadeIn(1700);\r\n                });\r\n            });\r\n        </script>\r\n   \r\n</div>\r\n\r\n',
                                                                                   'maven,javaEE', 'javaEE',
                                                                                   '2016-06-11', 0),
  (4, 'Maven学习记录(三)--实战引入Spring支持', 1, '牛李',
   '一.创建项目maven项目在IDEA下创建是相当容易然后给定项目坐标,确定即可二.完善项目目录结构IDEA创建完项目结构和标准的maven项目有些差异,这个时候就需要我们手动调整一下更改前结构 更改后三.引入spring支持引入框架无非三步走: 1. 引入架包 2. 创建配置文件 3. 加载配置文件 接下来的步骤也是按照这三步走方法来的首先是pom.xml文件,增加spring和spri...',
   '<div id=\"article_content\" class=\"article_content\">\r\n        <div class=\"markdown_views\"><h1 id=\"一创建项目\">一.创建项目</h1>\r\n\r\n<p>maven项目在IDEA下创建是相当容易</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160602142007716\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>然后给定项目坐标,确定即可</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160602142039419\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n\r\n\r\n<h1 id=\"二完善项目目录结构\">二.完善项目目录结构</h1>\r\n\r\n<p>IDEA创建完项目结构和标准的maven项目有些差异,这个时候就需要我们手动调整一下</p>\r\n\r\n<p>更改前结构 <br>\r\n<img src=\"http://img.blog.csdn.net/20160602142154407\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>更改后</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160602142411046\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n\r\n\r\n<h1 id=\"三引入spring支持\">三.引入spring支持</h1>\r\n\r\n<p>引入框架无非三步走: <br>\r\n1. 引入架包  <br>\r\n2. 创建配置文件 <br>\r\n3. 加载配置文件 <br>\r\n接下来的步骤也是按照这三步走方法来的</p>\r\n\r\n<p>首先是pom.xml文件,增加spring和springMVC需要的包</p>\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">properties</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!-- springframe 版本控制 --&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">spring.version</span>&gt;</span>4.1.1.RELEASE<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">spring.version</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">properties</span>&gt;</span>\r\n\r\n  <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependencies</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!-- springframe start --&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-core<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-web<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-oxm<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-tx<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-jdbc<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-webmvc<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-aop<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-context-support<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">groupId</span>&gt;</span>org.springframework<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">groupId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">artifactId</span>&gt;</span>spring-test<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">artifactId</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">version</span>&gt;</span>${spring.version}<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">version</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependency</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!-- springframe end --&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">dependencies</span>&gt;</span></code></pre>\r\n\r\n<p>然后在resources文件夹下建立spring文件夹,增加Application.xml和Application-mvc.xml两个配置文件,分别为spring和springMVC的配置文件</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160602143958135\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>接着在web.xml中配置加载spring的配置文件</p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs xml\"><span class=\"hljs-doctype\">&lt;!DOCTYPE web-app PUBLIC\r\n \"-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN\"\r\n \"http://java.sun.com/dtd/web-app_2_3.dtd\" &gt;</span>\r\n\r\n<span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">web-app</span>&gt;</span>\r\n  <span class=\"hljs-comment\">&lt;!--配置spring--&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">context-param</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">param-name</span>&gt;</span>contextConfigLocation<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">param-name</span>&gt;</span>\r\n    <span class=\"hljs-comment\">&lt;!--配置文件的路径--&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">param-value</span>&gt;</span>classpath:spring/Application.xml<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">param-value</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">context-param</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">listener</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">listener-class</span>&gt;</span>org.springframework.web.context.ContextLoaderListener<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">listener-class</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">listener</span>&gt;</span>\r\n  <span class=\"hljs-comment\">&lt;!--配置spring结束--&gt;</span>\r\n\r\n  <span class=\"hljs-comment\">&lt;!--配置springMVC--&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">servlet</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">servlet-name</span>&gt;</span>dispatcher<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">servlet-name</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">servlet-class</span>&gt;</span>org.springframework.web.servlet.DispatcherServlet<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">servlet-class</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">init-param</span>&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">param-name</span>&gt;</span>contextConfigLocation<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">param-name</span>&gt;</span>\r\n      <span class=\"hljs-comment\">&lt;!--配置文件的路径--&gt;</span>\r\n      <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">param-value</span>&gt;</span>classpath:spring/Application-mvc.xml<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">param-value</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">init-param</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">load-on-startup</span>&gt;</span>1<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">load-on-startup</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">servlet</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">servlet-mapping</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">servlet-name</span>&gt;</span>dispatcher<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">servlet-name</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">url-pattern</span>&gt;</span>/<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">url-pattern</span>&gt;</span>\r\n  <span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">servlet-mapping</span>&gt;</span>\r\n  <span class=\"hljs-comment\">&lt;!--配置springMVC结束--&gt;</span>\r\n<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">web-app</span>&gt;</span></code></pre>\r\n\r\n<p>到此spring框架就引入完毕了,其他框架的引入都和其比较类似,照葫芦画瓢即可,接下来对spring配置等都可以直接在其配置文件进行,也就是和maven没多大关系了</p></div>\r\n        <script  type=\"text/javascript\">\r\n            $(function () {\r\n                $(\'pre.prettyprint code\').each(function () {\r\n                    var lines = $(this).text().split(\'\\n\').length;\r\n                    var $numbering = $(\'<ul/>\').addClass(\'pre-numbering\').hide();\r\n                    $(this).addClass(\'has-numbering\').parent().append($numbering);\r\n                    for (i = 1; i <= lines; i++) {\r\n                        $numbering.append($(\'<li/>\').text(i));\r\n                    };\r\n                    $numbering.fadeIn(1700);\r\n                });\r\n            });\r\n        </script>\r\n   \r\n</div>\r\n\r\n',
   'maven,javaEE', 'javaEE', '2016-06-11', 0), (5, ' POJ1416--DFS入门', 1, '牛李',
                                                '题目:现在你要研发一种新型的碎纸机，待粉碎的纸上面有一串数字，要求把纸粉碎成的几片上的数字的和尽量接近而不能超过给定的数字target number。比如：一片纸上的数字为12346，target number为50，那么就可以把纸粉碎为1、2、34、6，其加和为43，是所有粉碎方法中最接近50而不超过50的最优解。分析:这种是一个基本的DFS题目,用来入门是相当不错的. 题目换句话来理解就是有一...',
                                                '<div id=\"article_content\" class=\"article_content\">\r\n        <div class=\"markdown_views\"><h2 id=\"题目\">题目:</h2>\r\n\r\n<p>现在你要研发一种新型的碎纸机，待粉碎的纸上面有一串数字，要求把纸粉碎成的几片上的数字的和尽量接近而不能超过给定的数字target number。比如：一片纸上的数字为12346，target number为50，那么就可以把纸粉碎为1、2、34、6，其加和为43，是所有粉碎方法中最接近50而不超过50的最优解。</p>\r\n\r\n<hr>\r\n\r\n<p>分析:这种是一个基本的DFS题目,用来入门是相当不错的. <br>\r\n题目换句话来理解就是有一串数字中间用+号来连接,使其结果小于或等于指定值的最优解.</p>\r\n\r\n<p><strong>EG:</strong></p>\r\n\r\n<p>总量50    对应字串12346</p>\r\n\r\n<p>那么可以分为以下几种情况 <br>\r\n50        1+2+3+4+6=16</p>\r\n\r\n<p>50        12+3+4+6=25</p>\r\n\r\n<p>50        123+4+6=133</p>\r\n\r\n<p>50        1+23+4+6=34 <br>\r\n等等…</p>\r\n\r\n<p>那么我们就可以挨个试,也就是暴力搜索的方法,当然也要剪枝来提高效率.先看看基本的递归图</p>\r\n\r\n<p>“”表示剩余字串,也就是下一步要递归的字串 <br>\r\n<img src=\"http://img.blog.csdn.net/20160425220314088\" alt=\"这里写图片描述\" title=\"\"></p>\r\n\r\n<p>跟着图的思路,那么代码就很容易写出来了,<strong>这里只写了一个样例程序,具体输入输出格式可以自己改写</strong></p>\r\n\r\n\r\n\r\n<pre class=\"prettyprint\"><code class=\" hljs cs\"><span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">class</span> Main {\r\n    <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">int</span> sumTotal = <span class=\"hljs-number\">50</span>;<span class=\"hljs-comment\">//规定最大值</span>\r\n    <span class=\"hljs-keyword\">static</span> String num = <span class=\"hljs-string\">\"12346\"</span>;<span class=\"hljs-comment\">//规定字串</span>\r\n    <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">int</span> max = <span class=\"hljs-number\">0</span>;<span class=\"hljs-comment\">//得到最大值结果</span>\r\n    <span class=\"hljs-keyword\">static</span> boolean isCheck = <span class=\"hljs-keyword\">true</span>;<span class=\"hljs-comment\">//当前最大值结果是否唯一</span>\r\n    <span class=\"hljs-keyword\">static</span> StringBuilder builder = <span class=\"hljs-keyword\">new</span> StringBuilder();<span class=\"hljs-comment\">//当前最大值结果对应的方式</span>\r\n\r\n    <span class=\"hljs-keyword\">public</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">void</span> <span class=\"hljs-title\">main</span>(String[] args) {\r\n        DFS(num, <span class=\"hljs-number\">0</span>);\r\n\r\n    }\r\n\r\n\r\n    <span class=\"hljs-keyword\">private</span> <span class=\"hljs-keyword\">static</span> <span class=\"hljs-keyword\">void</span> <span class=\"hljs-title\">DFS</span>(String num,<span class=\"hljs-keyword\">int</span> curSum){\r\n        <span class=\"hljs-comment\">//递归结束条件</span>\r\n        <span class=\"hljs-keyword\">if</span> (num == <span class=\"hljs-keyword\">null</span> || <span class=\"hljs-string\">\"\"</span>.equals(num)) {\r\n            <span class=\"hljs-keyword\">if</span> (curSum == max) {\r\n                isCheck = <span class=\"hljs-keyword\">false</span>;\r\n                System.err.println(builder.toString()+<span class=\"hljs-string\">\"---max = \"</span>+max+<span class=\"hljs-string\">\"---check:\"</span>+isCheck);\r\n                <span class=\"hljs-keyword\">return</span> ;\r\n            }<span class=\"hljs-keyword\">else</span> <span class=\"hljs-keyword\">if</span> (curSum &gt; max) {\r\n                max = curSum;\r\n                isCheck = <span class=\"hljs-keyword\">true</span>;\r\n                <span class=\"hljs-comment\">//记录结果,打印</span>\r\n                System.err.println(builder.toString()+<span class=\"hljs-string\">\"---max = \"</span>+max+<span class=\"hljs-string\">\"---check:\"</span>+isCheck);\r\n                builder.delete(<span class=\"hljs-number\">0</span>, builder.length());\r\n                <span class=\"hljs-keyword\">return</span> ;\r\n            }\r\n        }\r\n        <span class=\"hljs-comment\">//这里是循环的主体</span>\r\n        <span class=\"hljs-keyword\">for</span> (<span class=\"hljs-keyword\">int</span> i = <span class=\"hljs-number\">0</span>; i &lt; num.length(); i++) {\r\n            <span class=\"hljs-keyword\">int</span> startNum = Integer.parseInt(num.substring(<span class=\"hljs-number\">0</span>,i+<span class=\"hljs-number\">1</span>));\r\n            <span class=\"hljs-comment\">//剪枝,当总和大于total就没必要往后递归了</span>\r\n            <span class=\"hljs-keyword\">if</span> ((curSum + startNum)&gt;sumTotal) {\r\n                <span class=\"hljs-keyword\">return</span>;\r\n            }\r\n            <span class=\"hljs-comment\">//暂存结果,回溯的时候赋值给builder</span>\r\n            StringBuilder temp = <span class=\"hljs-keyword\">new</span> StringBuilder(builder);\r\n            builder.append(startNum).append(<span class=\"hljs-string\">\" \"</span>);\r\n            <span class=\"hljs-comment\">//下一步递归</span>\r\n            DFS(num.substring(i+<span class=\"hljs-number\">1</span>),curSum+startNum);\r\n            builder = temp;\r\n        }\r\n\r\n    }\r\n}</code></pre>\r\n\r\n<p>结果很容易得出</p>\r\n\r\n<p><img src=\"http://img.blog.csdn.net/20160425220745856\" alt=\"这里写图片描述\" title=\"\"></p></div>\r\n        <script  type=\"text/javascript\">\r\n            $(function () {\r\n                $(\'pre.prettyprint code\').each(function () {\r\n                    var lines = $(this).text().split(\'\\n\').length;\r\n                    var $numbering = $(\'<ul/>\').addClass(\'pre-numbering\').hide();\r\n                    $(this).addClass(\'has-numbering\').parent().append($numbering);\r\n                    for (i = 1; i <= lines; i++) {\r\n                        $numbering.append($(\'<li/>\').text(i));\r\n                    };\r\n                    $numbering.fadeIn(1700);\r\n                });\r\n            });\r\n        </script>\r\n   \r\n</div>\r\n\r\n',
                                                'poj,DFS,搜索', 'ACM', '2016-06-11', 0);

UNLOCK TABLES;

/*Table structure for table `attend` */

CREATE TABLE `attend` (
  `id`             INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`        INT(11)                   DEFAULT NULL,
  `username`       VARCHAR(30)               DEFAULT NULL,
  `contest_id`     INT(11)                   DEFAULT '0',
  `solved`         INT(11)                   DEFAULT '0',
  `score`          INT(11)                   DEFAULT '0',
  `A_time`         INT(11)                   DEFAULT '0',
  `A_wrongsubmits` INT(11)                   DEFAULT '0',
  `B_time`         INT(11)                   DEFAULT '0',
  `B_wrongsubmits` INT(11)                   DEFAULT '0',
  `C_time`         INT(11)                   DEFAULT '0',
  `C_wrongsubmits` INT(11)                   DEFAULT '0',
  `D_time`         INT(11)                   DEFAULT '0',
  `D_wrongsubmits` INT(11)                   DEFAULT '0',
  `E_time`         INT(11)                   DEFAULT '0',
  `E_wrongsubmits` INT(11)                   DEFAULT '0',
  `F_time`         INT(11)                   DEFAULT '0',
  `F_wrongsubmits` INT(11)                   DEFAULT '0',
  `G_time`         INT(11)                   DEFAULT '0',
  `G_wrongsubmits` INT(11)                   DEFAULT '0',
  `H_time`         INT(11)                   DEFAULT '0',
  `H_wrongsubmits` INT(11)                   DEFAULT '0',
  `I_time`         INT(11)                   DEFAULT '0',
  `I_wrongsubmits` INT(11)                   DEFAULT '0',
  `J_time`         INT(11)                   DEFAULT '0',
  `J_wrongsubmits` INT(11)                   DEFAULT '0',
  `K_time`         INT(11)                   DEFAULT '0',
  `K_wrongsubmits` INT(11)                   DEFAULT '0',
  `L_time`         INT(11)                   DEFAULT '0',
  `L_wrongsubmits` INT(11)                   DEFAULT '0',
  `M_time`         INT(11)                   DEFAULT '0',
  `M_wrongsubmits` INT(11)                   DEFAULT '0',
  `N_time`         INT(11)                   DEFAULT '0',
  `N_wrongsubmits` INT(11)                   DEFAULT '0',
  `O_time`         INT(11)                   DEFAULT '0',
  `O_wrongsubmits` INT(11)                   DEFAULT '0',
  `P_time`         INT(11)                   DEFAULT '0',
  `P_wrongsubmits` INT(11)                   DEFAULT '0',
  `Q_time`         INT(11)                   DEFAULT '0',
  `Q_wrongsubmits` INT(11)                   DEFAULT '0',
  `R_time`         INT(11)                   DEFAULT '0',
  `R_wrongsubmits` INT(11)                   DEFAULT '0',
  `S_time`         INT(11)                   DEFAULT '0',
  `S_wrongsubmits` INT(11)                   DEFAULT '0',
  `T_time`         INT(11)                   DEFAULT '0',
  `T_wrongsubmits` INT(11)                   DEFAULT '0',
  `U_time`         INT(11)                   DEFAULT '0',
  `U_wrongsubmits` INT(11)                   DEFAULT '0',
  `V_time`         INT(11)                   DEFAULT '0',
  `V_wrongsubmits` INT(11)                   DEFAULT '0',
  `W_time`         INT(11)                   DEFAULT '0',
  `W_wrongsubmits` INT(11)                   DEFAULT '0',
  `X_time`         INT(11)                   DEFAULT '0',
  `X_wrongsubmits` INT(11)                   DEFAULT '0',
  `Y_time`         INT(11)                   DEFAULT '0',
  `Y_wrongsubmits` INT(11)                   DEFAULT '0',
  `Z_time`         INT(11)                   DEFAULT '0',
  `Z_wrongsubmits` INT(11)                   DEFAULT '0',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;

/*Data for the table `attend` */

LOCK TABLES `attend` WRITE;

INSERT INTO `attend` (`id`, `user_id`, `username`, `contest_id`, `solved`, `score`, `A_time`, `A_wrongsubmits`, `B_time`, `B_wrongsubmits`, `C_time`, `C_wrongsubmits`, `D_time`, `D_wrongsubmits`, `E_time`, `E_wrongsubmits`, `F_time`, `F_wrongsubmits`, `G_time`, `G_wrongsubmits`, `H_time`, `H_wrongsubmits`, `I_time`, `I_wrongsubmits`, `J_time`, `J_wrongsubmits`, `K_time`, `K_wrongsubmits`, `L_time`, `L_wrongsubmits`, `M_time`, `M_wrongsubmits`, `N_time`, `N_wrongsubmits`, `O_time`, `O_wrongsubmits`, `P_time`, `P_wrongsubmits`, `Q_time`, `Q_wrongsubmits`, `R_time`, `R_wrongsubmits`, `S_time`, `S_wrongsubmits`, `T_time`, `T_wrongsubmits`, `U_time`, `U_wrongsubmits`, `V_time`, `V_wrongsubmits`, `W_time`, `W_wrongsubmits`, `X_time`, `X_wrongsubmits`, `Y_time`, `Y_wrongsubmits`, `Z_time`, `Z_wrongsubmits`)
VALUES
  (1, 1, 'nl101531', 1, 2, 10, 722691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UNLOCK TABLES;

/*Table structure for table `catelog` */

CREATE TABLE `catelog` (
  `id`       INT(11) NOT NULL AUTO_INCREMENT,
  `catename` VARCHAR(30)      DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;

/*Data for the table `catelog` */

LOCK TABLES `catelog` WRITE;

INSERT INTO `catelog` (`id`, `catename`)
VALUES (1, '语言入门'), (2, '数据结构'), (3, '贪心算法'), (4, '搜索'), (5, '数学基础'), (6, '图论'), (7, '矩阵计算'), (8, '动态规划');

UNLOCK TABLES;

/*Table structure for table `contest` */

CREATE TABLE `contest` (
  `contest_id`  INT(11)      NOT NULL,
  `title`       VARCHAR(255) NOT NULL,
  `start_time`  DATETIME     NOT NULL,
  `end_time`    DATETIME     NOT NULL,
  `description` TEXT         NOT NULL,
  `type`        INT(3)                DEFAULT NULL,
  `password`    VARCHAR(255)          DEFAULT NULL,
  `create_user` VARCHAR(30)           DEFAULT NULL,
  `user_id`     INT(11)               DEFAULT NULL,
  `defunct`     TINYINT(1)   NOT NULL DEFAULT '1',
  PRIMARY KEY (`contest_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `contest` */

LOCK TABLES `contest` WRITE;

INSERT INTO `contest` (`contest_id`, `title`, `start_time`, `end_time`, `description`, `type`, `password`, `create_user`, `user_id`, `defunct`)
VALUES
  (1, '安徽理工大学第一届程序员校赛', '2016-06-01 16:05:11', '2016-06-30 16:05:15', '大赛公平公正,选出安理工优秀程序员,参加更高级的比赛', 2, '', 'nl101531',
   1, 1), (2, '安徽理工大学蓝桥杯校赛', '2016-06-22 23:04:38', '2016-06-30 23:04:42', '校赛第一名将代表学校参加省赛,省赛第一名代表学校参加国赛\r\n', 1, '123',
           'nl101531', 1, 1),
  (3, '安徽理工大学码农争夺战', '2016-06-02 23:06:05', '2016-06-30 23:06:09', '测试\r\n', 1, '123', 'nl101531', 1, 1),
  (4, '安徽理工大学超新星大赛', '2016-06-04 23:07:06', '2016-06-09 23:07:09', '测试', 1, '123', 'nl101531', 1, 0);

UNLOCK TABLES;

/*Table structure for table `contest_problem` */

CREATE TABLE `contest_problem` (
  `id`          INT(11)      NOT NULL AUTO_INCREMENT,
  `problem_id`  INT(11)      NOT NULL,
  `contest_id`  INT(11)      NOT NULL,
  `title`       VARCHAR(255) NOT NULL,
  `num`         VARCHAR(10)  NOT NULL,
  `point`       INT(5)                DEFAULT '0',
  `accepted`    INT(11)               DEFAULT '0',
  `solved`      INT(11)               DEFAULT '0',
  `submit`      INT(11)               DEFAULT '0',
  `submit_user` INT(11)               DEFAULT '0',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;

/*Data for the table `contest_problem` */

LOCK TABLES `contest_problem` WRITE;

INSERT INTO `contest_problem` (`id`, `problem_id`, `contest_id`, `title`, `num`, `point`, `accepted`, `solved`, `submit`, `submit_user`)
VALUES (1, 1000, 1, 'A+B问题', 'A', 10, 0, 1, 1, 1), (2, 1001, 3, '一道难题', 'B', 10, 0, 0, 0, 0),
  (3, 1002, 3, '一道更难的题', 'C', 10, 0, 0, 0, 0);

UNLOCK TABLES;

/*Table structure for table `notify` */

CREATE TABLE `notify` (
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `notify_name` VARCHAR(255)     DEFAULT NULL,
  `article_id`  INT(11)          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8;

/*Data for the table `notify` */

LOCK TABLES `notify` WRITE;

INSERT INTO `notify` (`id`, `notify_name`, `article_id`)
VALUES (1, '这是第一条通知', 0), (2, '安徽理工大学蓝桥杯大赛最近开始了,点击报名哈', 1), (3, '欢迎来到AUST CODE,在这里你可以训练自己称为一名合格的Acmer', 0),
  (4, '一条测试', 0), (5, '凑够5条的测试', 0), (6, '第六个测试,第六个测试第六个测试第六个测试', 0);

UNLOCK TABLES;

/*Table structure for table `problem` */

CREATE TABLE `problem` (
  `problem_id`    INT(11)      NOT NULL,
  `title`         VARCHAR(255) NOT NULL,
  `description`   TEXT,
  `input`         TEXT,
  `output`        TEXT,
  `sample_input`  TEXT,
  `sample_output` TEXT,
  `tag`           VARCHAR(255)             DEFAULT NULL,
  `hint`          TEXT,
  `catelog`       INT(3)                   DEFAULT NULL,
  `stage`         INT(3)                   DEFAULT NULL,
  `spj`           INT(11)                  DEFAULT '0',
  `time_limit`    INT(11)                  DEFAULT NULL,
  `memory_limit`  INT(11)                  DEFAULT NULL,
  `accepted`      INT(11)                  DEFAULT '0',
  `solved`        INT(11)                  DEFAULT '0',
  `submit`        INT(11)                  DEFAULT '0',
  `submit_user`   INT(11)                  DEFAULT '0',
  `author`        VARCHAR(30)              DEFAULT NULL,
  `author_id`     INT(11)                  DEFAULT NULL,
  `contest_id`    INT(11)                  DEFAULT NULL,
  `oj_name`       VARCHAR(255)             DEFAULT 'Guet',
  `oj_pid`        INT(11)                  DEFAULT '0',
  `isvirtual`     INT(1) UNSIGNED ZEROFILL DEFAULT '0',
  PRIMARY KEY (`problem_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `problem` */

LOCK TABLES `problem` WRITE;

INSERT INTO `problem` (`problem_id`, `title`, `description`, `input`, `output`, `sample_input`, `sample_output`, `tag`, `hint`, `catelog`, `stage`, `spj`, `time_limit`, `memory_limit`, `accepted`, `solved`, `submit`, `submit_user`, `author`, `author_id`, `contest_id`, `oj_name`, `oj_pid`, `isvirtual`)
VALUES (1000, 'A+B Problem', 'Calculate A + B and give me the answer!',
        'Input two integers A and B.(Watch the Sample Input) ',
        'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0,
        300, 65575, 1, 1, 1, 1, '牛李', 1, 1, 'Guen', 0, 0),
  (1001, 'A+C Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 3, 'Guen', 0, 0),
  (1002, 'A+D Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 3, 'Guen', 0, 0),
  (1003, 'A+E Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 3, 1, 5, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1004, 'A+F Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1005, 'A+H Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1006, 'A+J Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1007, 'A+K Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1008, 'A+Q Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1009, 'A+W Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1010, 'A+R Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1011, 'A+T Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1012, 'A+Y Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1013, 'A+U Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 2, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1014, 'A+I Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1015, 'A+O Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 3, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1016, 'A+P Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 4, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1017, 'A+A Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1018, 'A+S Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1019, 'A+G Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 3, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1020, 'A+K Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1021, 'A+Z Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1022, 'A+X Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 3, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1023, 'A+V Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 3, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1024, 'A+N Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 3, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1025, 'A+M Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1026, 'A++ Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 4, 1, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1027, 'A++ Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 4, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1028, 'A+Q Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1029, 'A+W Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1030, 'A+E Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1031, 'A+R Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1032, 'A+T Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1033, 'A+Y Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1034, 'A+U Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1035, 'A+I Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1036, 'A+O Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 5, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1037, 'A+P Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 6, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1038, 'A+A Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 6, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1039, 'A+S Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 6, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1040, 'A+D Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1041, 'A+F Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 6, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1042, 'A+G Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 6, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1043, 'A+H Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1044, 'A+J Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 6, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1045, 'A+K Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1046, 'A+L Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 2, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1047, 'A+Q Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1048, 'A+W Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1049, 'A+E Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1050, 'A+R Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1051, 'A+T Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1052, 'A+Y Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1053, 'A+U Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1054, 'A+I Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1055, 'A+O Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1056, 'A+P Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1057, 'A+A Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1058, 'A+S Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1059, 'A+D Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 7, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1060, 'A+F Problem', 'Calculate A + B and give me the answer!', 'Input two integers A and B.(Watch the Sample Input) ', 'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0),
  (1061, 'A+G Problem', 'Calculate A + B and give me the answer!',
   'Input two integers A and B.(Watch the Sample Input) ',
   'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300,
   65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0), (1062, 'A+H Problem', 'Calculate A + B and give me the answer!',
                                                  'Input two integers A and B.(Watch the Sample Input) ',
                                                  'For each case, output A + B in one line..(Watch the Sample Output)',
                                                  '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李',
                                                  1, 0, 'Guen', 0, 0),
  (1063, 'A+J Problem', 'Calculate A + B and give me the answer!',
   'Input two integers A and B.(Watch the Sample Input) ',
   'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300,
   65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0), (1064, 'A+K Problem', 'Calculate A + B and give me the answer!',
                                                  'Input two integers A and B.(Watch the Sample Input) ',
                                                  'For each case, output A + B in one line..(Watch the Sample Output)',
                                                  '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李',
                                                  1, 0, 'Guen', 0, 0),
  (1065, 'A+L Problem', 'Calculate A + B and give me the answer!',
   'Input two integers A and B.(Watch the Sample Input) ',
   'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300,
   65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0), (1066, 'A+Z Problem', 'Calculate A + B and give me the answer!',
                                                  'Input two integers A and B.(Watch the Sample Input) ',
                                                  'For each case, output A + B in one line..(Watch the Sample Output)',
                                                  '1 2 ', '3', '基本运算', '直接运算即可', 8, 3, 0, 300, 65575, 1, 1, 1, 1, '牛李',
                                                  1, 0, 'Guen', 0, 0),
  (1067, 'A+X Problem', 'Calculate A + B and give me the answer!',
   'Input two integers A and B.(Watch the Sample Input) ',
   'For each case, output A + B in one line..(Watch the Sample Output)', '1 2 ', '3', '基本运算', '直接运算即可', 1, 3, 0, 300,
   65575, 1, 1, 1, 1, '牛李', 1, 0, 'Guen', 0, 0);

UNLOCK TABLES;

/*Table structure for table `solution` */

CREATE TABLE `solution` (
  `solution_id` INT(11) NOT NULL AUTO_INCREMENT,
  `problem_id`  INT(11)          DEFAULT NULL,
  `username`    VARCHAR(30)      DEFAULT NULL,
  `user_id`     INT(11)          DEFAULT NULL,
  `submit_date` DATETIME         DEFAULT NULL,
  `memory`      INT(11)          DEFAULT '0',
  `time`        INT(11)          DEFAULT '0',
  `code_length` INT(11)          DEFAULT '0',
  `language`    TINYINT(3)       DEFAULT '1',
  `verdict`     INT(3)           DEFAULT '2',
  `contest_id`  INT(11)          DEFAULT '0',
  `testcase`    INT(11)          DEFAULT NULL,
  PRIMARY KEY (`solution_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 15
  DEFAULT CHARSET = utf8;

/*Data for the table `solution` */

LOCK TABLES `solution` WRITE;

INSERT INTO `solution` (`solution_id`, `problem_id`, `username`, `user_id`, `submit_date`, `memory`, `time`, `code_length`, `language`, `verdict`, `contest_id`, `testcase`)
VALUES (1, 1000, 'nl101531', 1, '2016-06-10 00:50:02', 21640, 90, NULL, 5, 5, 1, 5),
  (2, 1001, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 5, 1, 5),
  (3, 1003, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 5, 0, 5),
  (4, 1004, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 5, 0, 5),
  (5, 1004, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 4, 0, 5),
  (6, 1004, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 4, 0, 5),
  (7, 1005, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 4, 0, 5),
  (8, 1006, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 4, 0, 5),
  (9, 1007, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 4, 0, 5),
  (10, 1008, 'nl101531', 1, '2016-06-10 00:50:02', 21644, 120, NULL, 5, 4, 0, 5),
  (11, 1003, 'nl101531', 1, '2016-06-21 22:39:58', 0, 0, 0, 5, 3, 0, 0),
  (12, 1003, 'nl101531', 1, '2016-06-21 22:42:09', 21744, 150, 0, 5, 5, 0, 5),
  (13, 1003, 'nl101531', 1, '2016-06-21 22:51:04', 0, 0, 0, 5, 3, 0, 0),
  (14, 1003, 'nl101531', 1, '2016-06-21 22:52:18', 21656, 110, 0, 5, 5, 0, 5);

UNLOCK TABLES;

/*Table structure for table `solution_source` */

CREATE TABLE `solution_source` (
  `solution_id` INT(11) NOT NULL,
  `source`      TEXT
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

/*Data for the table `solution_source` */

LOCK TABLES `solution_source` WRITE;

INSERT INTO `solution_source` (`solution_id`, `source`) VALUES (1,
                                                                '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (2, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (3, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (4, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (5, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (6, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (7, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (8, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (9, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (10, '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (11, '<form id=\"pro_form\" action=\"/problem/judge\" method=\"post\">'), (12,
                                                                             '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}'),
  (13, '123124'), (14,
                   '\r\nimport java.util.*;\r\npublic class Main\r\n{\r\npublic static void main(String args[]) throws Exception\r\n{\r\nScanner cin=new Scanner(System.in);\r\nint a=cin.nextInt(),b=cin.nextInt();\r\nSystem.out.println(a+b);\r\n}\r\n}');

UNLOCK TABLES;

/*Table structure for table `tags` */

CREATE TABLE `tags` (
  `id`    INT(11)     NOT NULL AUTO_INCREMENT,
  `tag`   VARCHAR(35) NOT NULL,
  `count` INT(11)              DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 18
  DEFAULT CHARSET = utf8;

/*Data for the table `tags` */

LOCK TABLES `tags` WRITE;

INSERT INTO `tags` (`id`, `tag`, `count`)
VALUES (1, 'java', 3), (2, 'spring', 2), (3, '二分查找', 0), (4, 'mybatis', 2), (5, 'IDEA', 0), (6, 'eclipse', 5),
  (7, 'python', 2), (8, 'acm', 1), (9, 'C++', 9), (10, 'go语言', 1), (11, '并查集', 2), (12, '线段树', 3), (13, '多段波', 7),
  (14, 'AUST', 12), (16, 'maven', 1), (17, 'C  ', 0);

UNLOCK TABLES;

/*Table structure for table `user` */

CREATE TABLE `user` (
  `id`        INT(11)      NOT NULL AUTO_INCREMENT,
  `avatar`    VARCHAR(255)          DEFAULT '/static/images/default-avatar.jpg',
  `username`  VARCHAR(30)  NOT NULL,
  `password`  VARCHAR(100) NOT NULL,
  `nickname`  VARCHAR(30)           DEFAULT '佚名',
  `email`     VARCHAR(100) NOT NULL,
  `school`    VARCHAR(100)          DEFAULT NULL,
  `motto`     VARCHAR(255)          DEFAULT '这家伙什么都没留下',
  `language`  INT(11)               DEFAULT '1',
  `submit`    INT(11)               DEFAULT '0',
  `solved`    INT(11)               DEFAULT '0',
  `show`      TINYINT(4)            DEFAULT '0',
  `blogname`  VARCHAR(30)           DEFAULT '我的博客',
  `blog`      VARCHAR(255)          DEFAULT NULL,
  `honor`     VARCHAR(255)          DEFAULT NULL,
  `regdate`   DATETIME              DEFAULT NULL,
  `lastlogin` DATETIME              DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 40
  DEFAULT CHARSET = utf8;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

INSERT INTO `user` (`id`, `avatar`, `username`, `password`, `nickname`, `email`, `school`, `motto`, `language`, `submit`, `solved`, `show`, `blogname`, `blog`, `honor`, `regdate`, `lastlogin`)
VALUES
  (1, '/uploadimg/1.jpg', 'nl101531', '7c4a8d09ca3762af61e59520943dc26494f8941b', '牛李', '1015315668@qq.com', '安徽理工大学',
   '书山有路勤无用,学海无涯钱做主', 5, 0, 0, 1, 'CSDN博客---博主苦心经营的小窝', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖',
   '2016-06-11 15:57:46', '2016-08-04 22:02:54'),
  (2, '/static/images/default-avatar.jpg', 'nl101532', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张一', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:34:38', '2016-06-11 15:57:49'),
  (3, '/static/images/default-avatar.jpg', 'nl101533', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张二', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:34:49', '2016-06-11 15:57:49'),
  (4, '/static/images/default-avatar.jpg', 'nl101534', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张三', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:34:56', '2016-06-11 15:57:49'),
  (5, '/static/images/default-avatar.jpg', 'nl101535', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张四', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:04', '2016-06-11 15:57:49'),
  (6, '/static/images/default-avatar.jpg', 'nl101536', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张五', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:10', '2016-06-11 15:57:49'),
  (7, '/static/images/default-avatar.jpg', 'nl101537', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张六', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:18', '2016-06-11 15:57:49'),
  (8, '/static/images/default-avatar.jpg', 'nl101538', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张八', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:30', '2016-06-11 15:57:49'),
  (9, '/static/images/default-avatar.jpg', 'nl101539', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张九', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:36', '2016-06-11 15:57:49'),
  (10, '/static/images/default-avatar.jpg', 'nl101540', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张十', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:43', '2016-06-11 15:57:49'),
  (11, '/static/images/default-avatar.jpg', 'nl101541', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张十一', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:48', '2016-06-11 15:57:49'),
  (12, '/static/images/default-avatar.jpg', 'nl101542', '7c4a8d09ca3762af61e59520943dc26494f8941b', '李一', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:35:56', '2016-06-11 15:57:49'),
  (13, '/static/images/default-avatar.jpg', 'nl101543', '7c4a8d09ca3762af61e59520943dc26494f8941b', '李二', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:02', '2016-06-11 15:57:49'),
  (14, '/static/images/default-avatar.jpg', 'nl101544', '7c4a8d09ca3762af61e59520943dc26494f8941b', '李三', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:07', '2016-06-11 15:57:49'),
  (15, '/static/images/default-avatar.jpg', 'nl101545', '7c4a8d09ca3762af61e59520943dc26494f8941b', '李四', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:12', '2016-06-11 15:57:49'),
  (16, '/static/images/default-avatar.jpg', 'nl101546', '7c4a8d09ca3762af61e59520943dc26494f8941b', '李五', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:17', '2016-06-11 15:57:49'),
  (17, '/static/images/default-avatar.jpg', 'nl101547', '7c4a8d09ca3762af61e59520943dc26494f8941b', '王五', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:26', '2016-06-11 15:57:49'),
  (18, '/static/images/default-avatar.jpg', 'nl101548', '7c4a8d09ca3762af61e59520943dc26494f8941b', '王四', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 1, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:30', '2016-06-11 15:57:49'),
  (19, '/static/images/default-avatar.jpg', 'nl101549', '7c4a8d09ca3762af61e59520943dc26494f8941b', '王三', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:35', '2016-06-11 15:57:49'),
  (20, '/static/images/default-avatar.jpg', 'nl101550', '7c4a8d09ca3762af61e59520943dc26494f8941b', '王二', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:42', '2016-06-11 15:57:49'),
  (21, '/static/images/default-avatar.jpg', 'nl101551', '7c4a8d09ca3762af61e59520943dc26494f8941b', '王一', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:48', '2016-06-11 15:57:49'),
  (22, '/static/images/default-avatar.jpg', 'nl101552', '7c4a8d09ca3762af61e59520943dc26494f8941b', '钱一', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:36:55', '2016-06-11 15:57:49'),
  (23, '/static/images/default-avatar.jpg', 'nl101553', '7c4a8d09ca3762af61e59520943dc26494f8941b', '钱二', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:37:41', '2016-06-11 15:57:49'),
  (24, '/static/images/default-avatar.jpg', 'nl101554', '7c4a8d09ca3762af61e59520943dc26494f8941b', '钱三', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:37:45', '2016-06-11 15:57:49'),
  (25, '/static/images/default-avatar.jpg', 'nl101555', '7c4a8d09ca3762af61e59520943dc26494f8941b', '钱四', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:37:50', '2016-06-11 15:57:49'),
  (26, '/static/images/default-avatar.jpg', 'nl101556', '7c4a8d09ca3762af61e59520943dc26494f8941b', '钱五', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:37:55', '2016-06-11 15:57:49'),
  (27, '/static/images/default-avatar.jpg', 'nl101557', '7c4a8d09ca3762af61e59520943dc26494f8941b', '孙五', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:38:03', '2016-06-11 15:57:49'),
  (28, '/static/images/default-avatar.jpg', 'nl101558', '7c4a8d09ca3762af61e59520943dc26494f8941b', '孙四', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:38:07', '2016-06-11 15:57:49'),
  (29, '/static/images/default-avatar.jpg', 'nl101559', '7c4a8d09ca3762af61e59520943dc26494f8941b', '孙三', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:38:11', '2016-06-11 15:57:49'),
  (30, '/static/images/default-avatar.jpg', 'nl101560', '7c4a8d09ca3762af61e59520943dc26494f8941b', '孙二', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:38:56', '2016-06-11 15:57:49'),
  (31, '/static/images/default-avatar.jpg', 'nl101561', '7c4a8d09ca3762af61e59520943dc26494f8941b', '孙一', '1015315668@qq.com', '安徽理工大学', '这家伙什么都没留下', 5, 0, 0, 0, 'CSDN博客', 'http://blog.csdn.net/u012706811', '代表学校参加蓝桥杯大赛,获得一等奖', '2016-06-14 13:39:00', '2016-06-11 15:57:49'),
  (32, '/static/images/default-avatar.jpg', 'nl101', '嘻嘻', '佚名', '102893@qq.com', NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客',
   NULL, NULL, NULL, NULL),
  (33, '/static/images/default-avatar.jpg', 'nl1015311', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '佚名',
   '124241@qq.com', NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客', NULL, NULL, NULL, NULL),
  (34, '/static/images/default-avatar.jpg', 'qwertyu', '20d75fe135fc3abc15aee2f6e4657c3107899d6a', '佚名', '12213@qq.com',
   NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客', NULL, NULL, NULL, NULL),
  (35, '/static/images/default-avatar.jpg', '2341432', '7c4a8d09ca3762af61e59520943dc26494f8941b', '佚名',
   '123213@qq.com', NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客', NULL, NULL, NULL, NULL),
  (36, '/uploadimg/36.jpg', 'popop', '7c4a8d09ca3762af61e59520943dc26494f8941b', '周大群', '19438@qq.com', '好学校',
   '这是一个大大的测试号', 5, 0, 0, 0, '我的博客', '12123', NULL, NULL, '2016-06-16 22:53:30'),
  (37, '/static/images/default-avatar.jpg', 'Hello', '7c4a8d09ca3762af61e59520943dc26494f8941b', '佚名', '123456@qq.com',
   NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客', NULL, NULL, NULL, '2016-06-20 23:59:58'),
  (38, '/static/images/default-avatar.jpg', '121', '7c4a8d09ca3762af61e59520943dc26494f8941b', '佚名', '123213@qq.com',
   NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客', NULL, NULL, NULL, NULL),
  (39, '/static/images/default-avatar.jpg', '12344346546', '7c4a8d09ca3762af61e59520943dc26494f8941b', '佚名',
   '123213@qq.com', NULL, '这家伙什么都没留下', 1, 0, 0, 0, '我的博客', NULL, NULL, NULL, NULL);

UNLOCK TABLES;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;


DROP TABLE IF EXISTS phonedetails;

CREATE TABLE `phonedetails` (
  `id`                 INT(11)      NOT NULL AUTO_INCREMENT,
  `model`              VARCHAR(255)          DEFAULT 'NONE_MODEL',
  `brand`              VARCHAR(255)          DEFAULT 'NONE_BRAND',
  `imei`               VARCHAR(255) NOT NULL,
  `os`                 VARCHAR(500) NOT NULL,
  `uuid`               VARCHAR(255) NOT NULL,
  `zoomsuppported`     BOOLEAN,
  `videostabilization` BOOLEAN,
  `focusmode`          VARCHAR(32),
  `flashmode`          VARCHAR(32),
  `previewsize`        VARCHAR(1024),
  `details`            TEXT(65530),
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;


LOCK TABLES `phonedetails` WRITE;
INSERT INTO `phonedetails` (`id`, `model`, `brand`, `os`, `imei`, `uuid`, `zoomsuppported`, `videostabilization`, `focusmode`, `flashmode`, `previewsize`, `details`)
VALUES
  (NULL, 'model1', 'brand1', 'os1', 'imei_001', 'this is uuid', FALSE, TRUE, "focusmode", "flashmode", "[100]",
   "this is a long long string"),
  (NULL, 'model2', 'brand2', 'os1', 'imei_002', 'this is uuid', FALSE, TRUE, "focusmode", "flashmode", "[100]",
   "this is a long long string"),
  (NULL, 'model3', 'brand3', 'os1', 'imei_003', 'this is uuid', FALSE, TRUE, "focusmode", "flashmode", "[100]",
   "this is a long long string"),
  (NULL, 'model4', 'brand4', 'os1', 'imei_004', 'this is uuid', FALSE, TRUE, "focusmode", "flashmode", "[100]",
   "this is a long long string"),
  (NULL, 'model5', 'brand5', 'os1', 'imei_005', 'this is uuid', FALSE, TRUE, "focusmode", "flashmode", "[100]",
   "this is a long long string");
UNLOCK TABLES;

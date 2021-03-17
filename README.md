# QT5 Quick 基础学习



## 概念

什么是QT Quick: Qt Quick由Qt Quick模块提供，它是一个编写QML应用的标准库。Qt Quick模块提供了两种接口：使用QML语言创建应用的QML接口和使用C++语言扩展QML的C++接口。使用Qt Quick模块，设计人员和开发人员可以轻松地构建流畅的动态式QML用户界面，并且在需要的时候，可以将这些用户界面连接到任何C++后端。

 

Qt QML模块为QML语言开发应用程序和库提供了一个框架。它定义并实现了语言及其引擎架构，并且提供了一个接口，允许应用开发者以自定义类型和集成JavaScript与C++代码的方式来扩展QML语言。Qt QML模块提供了QML和C++两套接口。

 

QML（Qt Meta-Object Language，Qt元对象语言）是一种用于描述应用程序用户界面的声明式编程语言。



## 基本语法



**QML类型(QML Types)**

QML的类型系统包含了基本类型、 QML 对象类型和 JavaScript 类型，这些类型组成了整个QML文档。

- 基本类型

  在QML中将指向简单数据的类型称为基本类型，比如 int 或 string 等。基本类型的概念是相对于QML对象类型而言的，QML 对象类型可以包含属性、信号和函数等，但基本类型不能作为对象，比如 int {} 是不允许的。

- QML对象类型(QML Object     Types)

  QML对象类型就是可以实例化QML对象的类型。从语法上面来说，QML对象类型可以通过类型名称{对象特性} 的格式来定义一个对象。

- JavaScript 类型

  QML支持JavaScript对象和数组，可以通过var 类型创建并存储任何标准的JavaScript类型。



**对象**

QML对象由类型指定，一般与类型同名，名称以大写字母开头，后面跟一对大括号，在括号中包含了对象特性(QML Object Attributes)定义，包括 id、属性、信号、信号处理器、方法、附加属性和附加信号处理器等，当然也可以包含子对象。



**属性(Property)**

属性是对象的特性之一，可以分配一个静态的值或者绑定一个动态表达式，属性和值由一个冒号隔开，使用“属性 : 值”语法进行初始化



- id 特性

  一个对象一般都会在开始指定一个id，可以通过它在其他对象中识别并引用该对象，id 特性是QML语言本身提供的，不能被QML对象类型进行重定义或者重写。id 值必须使用小写字母或者下划线开头，并且不能使用字母、数字和下划线以外的字符，其值在一个组件的作用域中必须是唯一的。

  id 看起来像是一个属性，但 id 特性并不是一个属性。

  

**注释**

QML中的注释与C++相似，单行注释使用 “ // ” 开始，直到行末结束；多行注释使用 “ / *”* *开始，以* *“* / ” 结尾。



**常用对象类型**

Item ;    Window;   Rectangle;   

交互对象 MouseArea



**锚布局**

anchors可以在一个部件的上、下、左、右、水平居中、垂直居中、中心等位置进行锚定



**JavaScript表达式和属性绑定**

在表达式中也可以包含其他对象或属性的引用，例如，height: width ，这也被称作属性绑定，当 width 的值改变时，height 属性的值会跟随变化。

**调试输出**

在QML中一般使用console将需要的信息输出到控制台，可用的有console.log, console.debug, console.info, console.warn 和 console.error，比如这里使用了console.debug("colorRect: ", parent.color) ，可以顺序输出参数中的内容，可以是字符串，也可以是对象属性引用。



## Item 类型

在Qt Quick中所有可视化类型都基于 Item，它们都被称为 `可视化项目（visual items）`

Item 对象本身没有一个可视化的外观，但是它定义了可视化项目中所有常见的特性，比如 x 、y 、width 、height 、anchors 和键盘处理等。Item 类型最常见的用法是作为其他项目的容器，这样就可以把其他项目作为一个整体.

这里主要涉及四个属性：

- z属性：用来设置兄弟项目之间的堆叠顺序，默认值为0，也就是说后面出现的项目默认绘制在前面的项目之上；而如果设置了z值，那么拥有较大z值的项目会出现在较小z值的兄弟项目之上；如果z值为负值，那么这个项目会绘制在其父项目的下面。

- opacity属性：opacity翻译过来就是不透明度，默认值为1.0，取值范围0.0-1.0，当为0.0的时候完全透明。

- rotation属性：设置顺时针旋转的度数，默认值为0。

- scale属性：这个用来设置比例因子，也就是进行缩放。默认值为1.0，当值小于1.0时，会进行缩小；当值大于1.0时，会进行放大；当值为负数时，会进行镜像翻转。

  

## 可视化画布 （The visual Canvas）

Qt Quick提供了一个拥有 z 排序的二维可视画布，它包含两个坐标系统，分别是项目坐标和场景坐标。

- 项目坐标（Item Coordinates）

  Qt Quick中使用的默认可视化坐标系统是项目坐标，这是一个笛卡尔坐标系统，在项目的左上角是原点 (0, 0)，X轴向右增大，Y轴向下增大，所以项目的右下角是坐标 (width, height) 。而一个独立的项目的位置是由其父项目来指定的，简单来说，其父项目的左上角是其原点。

- 场景坐标（Scene Coordinates）

  渲染场景的窗口的左上角是场景的原点 (0, 0)，一般来说，场景坐标与窗口中的根项目的坐标相同。如果需要进行坐标转换，可以使用 `Item::mapFromItem` 和 `Item::mapToItem` 方法进行。

## Rectangle

除了从Item继承过来的属性之外，它只包含下面几个属性：

- antialiasing : bool
- border
  - border.width : int
  - border.color : color
- color : color
- gradient : any
- radius : real

当绘制圆角矩形时 antialiasing 属性默认为 true，用于抗锯齿，否则为 false，所以一般这个属性不用设置。

## 基于锚的定位

通过将一个项目的锚点关联到另一个项目的锚点上，可以实现高动态的界面布局。一个可视化项目可以被认为拥有一组锚点（确切的说是锚线），如下图所示，一共七个，分别是 left, horizontalCenter, right, top, verticalCenter, baseline 和 bottom 。

在上图中没有显示 baseline ，它是一条假想的线，适用于包含文本的项目，对于没有文本的项目，相当于 top 。

除了使用这里指定的锚线，还有两个比较实用的锚定方式`anchors.fill` 和 `anchors.centerIn` ，前者可以使一个项目填充到另外一个项目，相当于同时指定上下左右四个锚点；后者用于将一个项目放到另一个项目的中心，相当于同时指定水平中心和垂直中心两个锚点。

在锚系统中也提供了边距（margins）和偏移（offsets）的概念。边距就是锚线与项目边界之间的空隙，包括 leftMargin, rightMargin, topMargin 和 bottomMargin，如下图所示。如果要同时指定四个边界的边距，可以使用 anchors.margins 。而偏移可以允许使用中心锚线来进行定位。

还需要说明的是，只可以将项目与它的兄弟或者直接父项目进行锚定。

## 定位器

定位器是一个容器项目，**可以用来为多个项目进行常规的布局**。包括Column 、 Row、 Grid 和 Flow。

 

## 使用字体

在文本中可以使用 `font` 属性组来设置字体，常用的属性如下：

- font.bold：是否加粗，取值为true或false
- font.capitalization：大写策略，取值为
  - Font.MixedCase不改变大小写（默认值）；
  - Font.AllUppercase全部大写；
  - Font.AllLowercase全部小写；
  - Font.SmallCaps小型大写字母（即小写字母变为大写但不改变字体原始的大小）；
  - Font.Capitalize：首字母大写
- font.family：字体族，取值为字体族的名字（区分大小写）
- font.italic：是否斜体，取值为true或false
- font.letterSpacing：字符间距，正值加大间距，负值减小间距
- font.pixelSize：字号大小，取值为整数（单位为像素，依赖于设备）
- font.pointSize：字号大小，取值为大于0的值（是设备无关的）
- font.strikeout：是否有删除线，取值为true或false
- font.underline：是否有下划线，取值为true或false
- font.weight：字体重量，取值为Font.Thin、Font.Light、Font.ExtraLight、Font.Normal（默认）、Font.Medium、Font.DemiBold、Font.Bold、Font.ExtraBold 和 Font.Black
- font.wordSpacing：单词间距，正值加大间距，负值减小间距

## 文本裁剪

Text 项目是可以设置宽度的，当里面的文本内容超出 Text 的宽度时，可以使用 `clip` 属性设置文本是否被裁剪。

~~~qml
Text {   text: "hello qt! Hello World!"; font.pointSize: 15; width: 186; clip: true      }
~~~

## 文本省略

在 Text 中还提供了 `elide` 属性，可以通过省略文本的部分内容来匹配文本的宽度，其取值包括`Text.ElideNone （默认）`、`Text.ElideLeft`、`Text.ElideMiddle` 和 `Text.ElideRight` ，需要注意的是，该属性也是在设置了 Text 宽度时才有作用。

~~~qml
Text {
            width: 186
            text: qsTr("hello qt! Hello World!文本省略")
            font.pointSize: 15
            elide: Text.ElideLeft
        }
~~~

## 文本换行

对于过长的文本，除了进行省略以外，也可以使用 `wrapMode` 来设置换行，可用的换行模式包括：`Text.NoWrap (默认)` 、`Text.WordWrap`、`Text.WrapAnywhere` 和`Text.Wrap`。当设定了 Text 的高度 `height`，或者最大行数 `maximumLineCount` 后，换行和省略可以同时使用

~~~qml
Text {
        width: 186
        text: qsTr("hello qt! Hello World!文本换行")
        font.pointSize: 15
        wrapMode: Text.WordWrap
    }
~~~

## 文本样式

使用 Text 的 `style` 属性可以设置文本的样式，包括：`Text.Normal(默认)`、`Text.Outline`、`Text.Raised` 和 `Text.Sunken` ，

~~~qml
Text { font.pointSize: 24; text: "Sunken"; color: "white"
        style: Text.Sunken; styleColor: "black" }
~~~

## 对齐方式

当设置了 Text 的宽度和高度以后，可以通过 `horizontalAlignment` 和 `verticalAlignment` 来设置文本内容的对齐方式，水平方向包括：`Text.AlignLeft`、 `Text.AlignRight`、 `Text.AlignHCenter` 和 `Text.AlignJustify`；垂直方向包括：`Text.AlignTop`、 `Text.AlignBottom` 和 `Text.AlignVCenter` 。

~~~qml
Text {
        width: 300; height: 50
        text: qsTr("hello qt! Hello World!")
        font.pointSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
    }
~~~

## 显示富文本

Text 项目除了显示纯文本以外，也可以显示富文本。通过 `textFormat` 属性可以设置文本格式，包括：

- Text.AutoText (默认)：自动判断以什么样式来进行显示；
- Text.PlainText：以纯文本进行显示；
- Text.StyledText：是一种支持基本文本样式标签的优化格式，例如HTML 3.2中的标签：

Text.RichText：可以显示富文本，支持 HTML 4 规范的标签，具体支持的标签内容可以在帮助 `Supported HTML Subset` 文档种进行查看。为了获取更好的性能，建议使用 Text.PlainText 或 Text.StyledText 。

~~~qml
Text {
    font.pointSize: 24
    textFormat: Text.RichText
    text: "<b>Hello</b> <i>World!</i>"
}
~~~



## TextInput

TextInput 项目用来显示单行可编辑的纯文本。TextInput 是一个非常简单的项目，除了显示光标和文本外，默认并没有边框等装饰性效果，所以在使用时一般要为其添加一个可视化的外观。

~~~qml
Window {
    visible: true
    width: 320
    height: 240

    Row {
        spacing: 10
        anchors.centerIn: parent

        Text { text: qsTr("请输入密码：") ; font.pointSize: 15
            verticalAlignment: Text.AlignVCenter }

        Rectangle {
          width: input.contentWidth<100 ? 100 : input.contentWidth + 10
          height: input.contentHeight + 5
          color: "lightgrey"
          border.color: "grey"

          TextInput {
              id: input
              anchors.fill: parent
              anchors.margins: 2
              font.pointSize: 15
              focus: true
          }
      }
    }
}
~~~



### 输入掩码

可以使用输入掩码 `inputMask` 来限制输入的内容，输入掩码就是使用一些特殊的字符来限制输入的格式和内容，比如掩码`A` 指定必须输入一个字母 A-Z或a-z，而掩码 `a` 与其类似，只是不强制输入，可以用留空。可用的掩码字符如下表所示。

| 字符（必须输入） | 字符（可留空） |                含义                 |
| :--------------: | :------------: | :---------------------------------: |
|        A         |       a        |          只能输入A-Z，a-z           |
|        N         |       n        |        只能输入A-Z，a-z，0-9        |
|        X         |       x        |          可以输入任意字符           |
|        9         |       0        |             只能输入0-9             |
|        D         |       d        |             只能输入1-9             |
|                  |       #        |  只能输入加号（+），减号（-），0-9  |
|        H         |       h        | 只能输入十六进制字符，A-F，a-f，0-9 |
|        B         |       b        |      只能输入二进制字符，0或1       |

|  字符   |                 含义                 |
| :-----: | :----------------------------------: |
|    >    |     后面的字母字符自动转换为大写     |
|    <    |     后面的字母字符自动转换为小写     |
|   ！    |       停止字母字符的大小写转换       |
| [ ] { } |      括号中的内容会直接显示出来      |
|    \    | 将该表中的特殊字符正常显示用作分隔符 |



### 验证器

除了使用掩码，还可以使用整数验证器 `IntValidator` 、`DoubleValidator（非整数验证器）`和`RegExpValidator（正则表达式验证器）`。下面的代码可以限制在TextInput中只能输入11到31之间的整数：

```
validator: IntValidator{ bottom: 11; top: 31; }
```

### 回显方式

TextInput项目的 `echoMode` 属性指定了文本的显示方式，可用的方式有：

- TextInput.Normal：直接显示文本（默认方式）；
- TextInput.Password：使用密码掩码字符（根据不同平台显示效果不同）来代替真实的字符；
- TextInput.NoEcho：不显示输入的内容；
- TextInput.PasswordEchoOnEdit：使用密码掩码字符，但在输入时显示真实字符。

~~~qml
focus: true
echoMode: TextInput.PasswordEchoOnEdit

onEditingFinished: {
    input.focus = false
    text2.text = text
}
~~~



## TextEdit

TextEdit 项目与 TextInput 类似，不同之处在于，TextEdit 用来显示多行的可编辑的格式化文本，它既可以显示纯文本也可以显示富文本。

~~~qml
Window {
    visible: true
    width: 640
    height: 480

    TextEdit {
        width: 240
        textFormat: Text.RichText
        text: "<b>Hello</b> <i>World!</i>"
        font.family: "Helvetica"
        font.pointSize: 20
        color: "blue"
        focus: true
    }
}
~~~

运行代码可以看到，TextEdit没有提供滚动条、光标跟随和其它在可视部件中通常具有的行为。为了更加人性化的体验，我们可以使用 `Flickable` 来为其提供滚动，实现光标跟随。下面来看一段示例代码：


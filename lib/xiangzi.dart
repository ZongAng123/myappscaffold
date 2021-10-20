/*
*
* 5.8.2 AppBar
* AppBar是一个Material风格的导航栏，通过它可以设置导航栏标题、导航栏菜单、导航栏底部的Tab标题等
*
* AppBar({
  Key? key,
  this.leading, //导航栏最左侧Widget，常见为抽屉菜单按钮或返回按钮。
  this.automaticallyImplyLeading = true, //如果leading为null，是否自动实现默认的leading按钮
  this.title,// 页面标题
  this.actions, // 导航栏右侧菜单
  this.bottom, // 导航栏底部菜单，通常为Tab按钮组
  this.elevation = 4.0, // 导航栏阴影
  this.centerTitle, //标题是否居中
  this.backgroundColor,
  ...   //其它属性见源码注释
})
*
* 页面 body
* 最后就是页面的Body部分了,Scaffold有一个body属性,接收一个Widget,我们可以传任意的Widget
* */


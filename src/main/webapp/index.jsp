<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<body>
<h2>Hello World!</h2>
<form action="image/addImage" method="post" enctype="multipart/form-data">
    标签ID：<input type="text" name="labelId">
    <input type="file" name="imageFile" value="选择文件">
    <input type="submit" value="提交文件"/>
</form>
</body>
</html>

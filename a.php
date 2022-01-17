<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<div class="file-input-wrapper">
  <button class="btn-file-input">رفع ملف</button>
  <input type="file" name="file" />
</div>
<style>
  .file-input-wrapper {
    width: 200px;
    height: 40px;
    overflow: hidden;
    position: relative;
  }
  .file-input-wrapper > input[type="file"] {
    font-size: 200px;
    position: absolute;
    top: 0;
    right: 0;
    opacity: 0;
  }
  .file-input-wrapper > .btn-file-input {
    display: inline-block;
    width: 200px;
    height: 40px;
  }
</style>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/login/style.css">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/signup/add" method="get">
                <span class="heading">用户注册</span>
                <div class="form-group">
                    <input type="email" class="form-control" name="emailAddress" placeholder="电子邮件" required="true">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="用户名" required="true">
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" name="password" placeholder="密码" required="true">
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">记住我</span>
                    <button type="submit" class="btn btn-default">立刻注册</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
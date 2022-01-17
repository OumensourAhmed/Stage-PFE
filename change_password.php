<?php
	$msg='';
	session_start();
	if(empty($_SESSION['permission']) OR $_SESSION['permission']=='non' ) {
	$title='Redirecting';
	header('Location: login.php');
}
else {
	if($_SERVER["REQUEST_METHOD"] == "POST") {
 	try {
			$bdd=new PDO("mysql:host=localhost;dbname=prefecture;charset=utf8","root","");
		}
		catch(Exception $e)
			{
        die('Erreur : '.$e->getMessage());
		}
	$requete="SELECT mdp FROM utilisateur where login='".$_SESSION["user_info"]["username"]."'";
 	$donnes=$bdd->query($requete);
 	$thepass=$donnes->fetch();
 	$thepass_entred=md5($_POST['oldpass']);
 	if(strlen($_POST['newpassword1'])<5) {
 		$msg='<span style="color:red">كلمة المرور يجب أن تحتوي على 6 حروف على الأقل</span>';
 	}
 	else {

 		if($thepass['mdp']!=$thepass_entred OR strlen($thepass_entred)<5) {
 		$msg='<span style="color:red">كلمة المرور غير صحيحة</span>';
 	}
 	else {
 		if($_POST['newpassword1']!=$_POST['newpassword2']) {
 			$msg='كلمة المرور غير متطابقة';
 		}
 		else {
 			$thenew_pass=md5($_POST['newpassword1']);
 			$req = $bdd->prepare('UPDATE utilisateur set mdp=:pass WHERE login=:username');

			$req->execute(array(
				    'pass' => $thenew_pass,
				    'username' =>$_SESSION["user_info"]["username"]
				    ));
 			$msg='<span style="color:green">تم تغيير كلمة المرور بنجاح</span>';
 		}
 	}
 	}
 	
 	}
}
 
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <!-- 
    	The codes are free, but we require linking to our web site.
    	Why to Link?
    	A true story: one girl didn't set a link and had no decent date for two years, and another guy set a link and got a top ranking in Google! 
    	Where to Put the Link?
    	home, about, credits... or in a good page that you want
    	THANK YOU MY FRIEND!
    -->
    <title>small change password form - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    	.separator {
            border-right: 1px solid #d98c8c; 
        }
        .icon-btn-save {
            padding-top: 0;
            padding-bottom: 0;
        }
        .input-group {
            margin-bottom:10px; 
        }
        .btn-save-label {
            position: relative;
            left: -12px;
            display: inline-block;
            padding: 6px 12px;
            background: rgba(0,0,0,0.15);
            border-radius: 3px 0 0 3px;
        }
        body {
            background-color: #e9eaeb;
        }
    </style>
</head>
<body>
<?php include('includes/header.php') ?>
<div style="margin-top: 30px;" class="container bootstrap snippet" lang="AR" dir=rtl charset=UTF-8>
    <form action="change_password.php" method="post">
        <div class="row" >
            <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-2" >
                <div class="panel panel-info" style="border: 1px solid #d98c8c;" >
                    <div class="panel-heading" style="background-color: #d98c8c; color:white;">
                        <h3 class="panel-title" >
                            <span class="glyphicon glyphicon-th" ></span>
                            تغيير الرقم السري   
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6 separator social-login-box"> <br>
                               <img alt="" class="img-thumbnail" src="https://bootdey.com/img/Content/avatar/avatar1.png">                        
                            </div>
                            <div style="margin-top:80px;" class="col-xs-6 col-sm-6 col-md-6 login-box">
                             <div class="form-group">
                                <div>
                                    <?php echo $msg; ?>
                                </div>
                                <div class="input-group">
                                  <div class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></div>
                                  <input class="form-control" type="password" placeholder="الرقم السري الحالي" name="oldpass">
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="input-group">
                                  <div class="input-group-addon"><span class="glyphicon glyphicon-log-in"></span></div>
                                  <input class="form-control" type="password" placeholder="الرقم السري الجديد" name="newpassword1">
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="input-group">
                                  <div class="input-group-addon"><span class="glyphicon glyphicon-log-in"></span></div>
                                  <input class="form-control" type="password" placeholder="تأكيد الرقم السري الجديد" name="newpassword2">
                                </div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6"></div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <button class="btn icon-btn-save btn-success" type="submit">تأكيد<span class="btn-save-label"><i class="glyphicon glyphicon-floppy-disk"></i></span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </form>   
</div>

<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>
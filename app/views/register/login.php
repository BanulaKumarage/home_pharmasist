<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>
    .bg-danger {color: #FF0000;}
    </style>
</head>
<body>
    <h1>Login<hr></h1>
    <br>
    <div class='bg-danger'>
                    <?php if(isset($this->errcreditionals)) {
                        echo $this->errcreditionals;
                    } ?>
    </div>
    <form action= "<?=SROOT?>register/login/<?= Register::getCurrentRole()?>" method="post">
        <label>Username</label>
        <input type="text" name="username"><br><br>
        <label>Password</label>
        <input type="password" name="password"> <span class="error"><br><br>
        <input type="submit" name="submit" value="Sign-in">
    </form>
    <br>
    
</body>
</html>
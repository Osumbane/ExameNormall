<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Imagem Gráfica, Lda</title>
	</head>
	<body>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="form-wrap">
                    <form action='/igsys/j_spring_security_check' method='POST' >
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="text" class="form-control" name='j_username' id='username'>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" name='j_password' id='password'>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>

	</body>
</html>

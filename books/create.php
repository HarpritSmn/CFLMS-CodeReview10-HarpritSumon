<!DOCTYPE html>
<html>
<head>
<title>Add new book</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">   
<link rel="stylesheet" href="style.css">
</head>
<body>

<br>
<h1 class="display-4 center d-flex justify-content-center">Insert a new book</h1> <br><br>
<div class="container">
<form class="container" action="actions/a_create.php" method= "post">
    
        <div class="form-group">
            <label>Author</label>
            <input class="form-control" type="text" name="author" placeholder="author"/>
        </div>    
        <div class="form-group">
            <label>Title</label>
            <input class="form-control" type="text" name= "title" placeholder="title"/>
        </div>
        
        <div class="form-group">
            <label>Picture</label>
            <input class="form-control" type="text" name= "picture" placeholder="picture"/>
        </div> 
        <div class="form-group">
            <label>Status</label>
            <input class="form-control" type="text" name= "status" placeholder="status" />
        </div> 

        <div class="form-group">
            <label>Description</label>
            <textarea rows="4" class="form-control" type="text" name= "descriptio" placeholder="description"/></textarea>
        </div>


        <div>
            <div class="row">
                <div class="col">
                    <button class="btn btn-primary btn-lg btn-block " type ="submit">Insert Book</button>
                </div>
                <div class="col">
                    <a href= "index.php"><button class="btn btn-primary btn-lg btn-block " type="button">Back</button></a>
                </div>
            </div>
        </div>
</form>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
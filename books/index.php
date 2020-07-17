<?php require_once 'actions/db_connect.php'; ?>

<!DOCTYPE html>
<html>
<head>
<title>BOOK</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
</head>
<body>

<br>
<h1 class="display-4 center d-flex justify-content-center">Overview of books</h1> <br><br>
<div class="container">

    <table class="table table-hover ">
        <thead>
            <tr>
               <th scope="col">Author</th>
               <th scope="col">Title</th>
               <th scope="col">Description</th>
               <th scope="col">Picture</th>
               <th scope="col">Options</th>
            </tr>
        </thead>
        <tbody>
        <?php
            $sql = "SELECT * FROM books WHERE status = 0";
            $result = $connect->query($sql);

            if($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo  "<tr>
                        <td>" .$row['author']."</td>
                        <td>" .$row['title' ]."</td>
                        <td>" .$row['descriptio']."</td>
                        <td><img src=" .$row['picture']."></td>
                        <td><br><br>
                           <a href='update.php?id=" .$row['id']."'><button type='button' class='btn btn-primary btn-lg btn-block '>Edit</button></a><br><br>
                           <a href='delete.php?id=" .$row['id']."'><button type='button' class='btn btn-danger btn-lg btn-block'>Delete</button></a>
                        </td>
                        </tr>";
               }
            } else {
                echo "<tr><td><center>No Books Avaliable</center></td></tr>";
            }
        ?>
        </tbody>
    </table>
    <a href= "create.php"><button type="button" class="btn btn-primary btn-lg btn-block">Add User</button></a>
</div>

<br>
<br>
<br>



<img src="" >

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
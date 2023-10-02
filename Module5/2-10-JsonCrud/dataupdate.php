<?php

    include('connect.php');
    
    $id=$_POST["id"];
    $name= $_POST["name"];
    $email= $_POST["email"];

    
    $sql ="update abcd set name='$name',email='$email' where id ='$id'";
    
    if(mysqli_query($con,$sql))
    {
        echo 'Updated Succesfully';
    }
    else
    {
        echo 'Something went wrong';
    }

?>
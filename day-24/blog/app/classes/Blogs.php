<?php

namespace App\Classes;


class Blogs
{
    public function addBlogInfo($data){
        $sql = "INSERT INTO `blog-info` (`id`, `category_name`, `blog_title`, `short_description`, `long_description`, `images`, `status`) VALUES (NULL, '$data[category_name]', '$data[blog_title]', '$data[short_description]', '$data[long_description]', '$data[images]', '$data[status]');";

        if (mysqli_query(Database::dbconnection(), $sql)){
            $message = "Blog info save successfully";
            return $message;
        }else{
            die('Query Problem'.mysqli_error(Database::dbconnection()));
        }
    }

    public function manageBlogInfo(){
        $sql = "SELECT * FROM blog-info";

        If( mysqli_query(Database::dbconnection(), $sql)){
            $qureyResult=mysqli_query(Database::dbconnection(), $sql);
            return $qureyResult;
        } else{
            die('Queary problem'.mysqli_error(Database::dbconnection()));
        }
    }
}
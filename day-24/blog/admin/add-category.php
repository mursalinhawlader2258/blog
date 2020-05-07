
<?php
session_start();
if($_SESSION['id'] == null){
    header('Location:index.php');
}
$message = "";
require_once "../vendor/autoload.php";
$login = new \App\Classes\Login();
use App\Classes\Database;
use App\Classes\ManageCategory;
use App\Classes\AddBlogInfo;

if (isset($_POST['btn'])){
    $message = AddBlogInfo::saveCategoryInfo($_POST);

}
if(isset($_GET['logout'])){
    $login-> adminLogout();
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
</head>
<body>
<?php include 'includes/menu.php';?>

<div class="container" style="margin-top:10px;">
    <div class="row">
        <div class="col-sm-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <h1><?php echo $message?></h1>
                    <form action="" method="POST">
                        <div class="form-group row">
                            <label for="category-name" class="col-sm-3 col-form-label">Category Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="category_name" id="category-name">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="category-description" class="col-sm-3 col-form-label">Category Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" name="category_description" id="category-description"></textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="publication-status" class="col-sm-3 col-form-label">Publication Status</label>
                            <div class="col-sm-9">
                                <input type="radio"  name="status" value="0"> Published
                                <input type="radio"  name="status" value="1"> Unpublished

                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <button type="submit" name="btn" class="btn btn-success btn-block">Save Catagory Info</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="../assets/js/jquery.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>

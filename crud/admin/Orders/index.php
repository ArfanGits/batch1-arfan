<?php

//Connect to database
$conn = new PDO("mysql:host=localhost;dbname=ecommerce",
    'root', '');
//set the PDO error mode to exception
$conn->setAttribute(PDO::ATTR_ERRMODE,
    PDO::ERRMODE_EXCEPTION);


$query = "SELECT * FROM `orders`";

$stmt = $conn->prepare($query);

$result = $stmt->execute();

$orders = $stmt->fetchAll();

/*echo "<pre>";
print_r($products);
echo "</pre>";*/
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Order</title>
</head>
<body>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <h1 class="text-center mb-4">Orders List</h1>

                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Product ID</th>
                        <th scope="col">Quantity</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    foreach ($orders as $order):
                        ?>

                        <tr>
                            <!-- php echo = '=' same work-->
                            <td><?= $order['product_id']?></td>
                            <td><?= $order['qty']?></td>
                            <td>
                                <a href="show.php?id=<?=$order['id'];?>">Show</a>
                                |
                                <a href="edit.php?id=<?=$order['id'];?>">Edit</a>
                                |
                                <a href="delete.php?id=<?=$order['id'];?>">Delete</a>
                            </td>
                        </tr>

                    <?php
                    endforeach;
                    ?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>

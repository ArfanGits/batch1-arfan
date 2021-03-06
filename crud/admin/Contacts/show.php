<?php

include_once($_SERVER['DOCUMENT_ROOT']."/batch1-arfan/crud/config.php");

use Bitm\Contact;

$_contact = new Contact();

$contact = $_contact->show();

/*echo "<pre>";
print_r($product);
echo "</pre>";*/

?>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Show Contacts</title>
</head>
<body>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <h1 class="text-center mb-4">Show Contacts</h1>
                <dl class="row">
                    <dt class="col-md-6">ID:</dt>
                    <dd class="col-md-6"><?= $contact['id'];?></dd>
                </dl>
                <dl class="row">
                    <dt class="col-md-6">Name:</dt>
                    <dd class="col-md-6"><?= $contact['name'];?></dd>
                </dl>
                <dl class="row">
                    <dt class="col-md-6">Email:</dt>
                    <dd class="col-md-6"><?= $contact['email'];?></dd>
                </dl>
                <dl class="row">
                    <dt class="col-md-6">Password:</dt>
                    <dd class="col-md-6"><?= $contact['subject'];?></dd>
                </dl>
                <dl class="row">
                    <dt class="col-md-6">Comment:</dt>
                    <dd class="col-md-6"><?= $contact['comment'];?></dd>
                </dl>
                <dl class="row">
                    <dt class="col-md-6">Date of Birth:</dt>
                    <dd class="col-md-6"><?= $contact['date'];?></dd>
                </dl>
                <dl class="row">
                    <dt class="col-md-3">Status:</dt>
                    <dd class="col-md-9">
                        <?php
                        echo $contact['status'] ? 'Active' : 'Inactive';
                        ?>
                    </dd>
                </dl>
            </div>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>

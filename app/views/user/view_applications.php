<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacy Applications</title>
    <?php include_once('css/baseTable.php'); ?>
</head>
<style>
    .dropdown{
        padding: 4px;
        border-radius: 5px;
        border: hidden;
    }
    .dropdown select option{
        padding: 15px;
    }
</style>
<body>
    
    <div class='container-fluid'>
        <a href="<?=SROOT?>CustomerDashboard" role="button" class="mybtn btn btn-primary">Go to Dashboard</a>

        <h1  class='header'>Applications<hr></h1>    
        <?php if(isset($_SESSION['role']) && !strcmp($_SESSION['role'],'super_admin')) { ?>
        <?php if (is_array($this->applications) && count($this->applications) > 0) { ?>
        <div class="table-div">
            <table class="table">
                <thread>
                    <th>Email</th>
                    <th>Pharmacy Name</th>
                    <th>Location</th>
                    <th>Address</th>
                    <th>Contact No</th>
                    <th>Delivery Supported</th>
                    <th>Files</th>
                    <th>Status</th>
                    <th></th>
                    <th></th>
                </thread>
                <?php

                foreach ($this->applications as $row) {
                    $row = (array) $row;
                    echo "<tr>";
                    echo "<td>" . "<a href = 'mailto:".$row["email"]."'>". $row["email"]."</a></td>";
                    echo "<td>" . $row["pharmacy_name"] . "</td>";
                    echo "<td> Location: " . $row['latitude'] . "," . $row['longitude'] . "</td>";
                    echo "<td>".$row['address']."</td>";
                    echo "<td>".$row['contact_no']."</td>";
                    if ($row['delivery_supported']) {
                        echo "<td>" . "Yes" . "</td>";
                    } else {
                        echo "<td>" . "No" . "</td>";
                    }
                    echo "<td> <a href=".SROOT. $row['documents'] . " download=".SROOT.">" . basename($row['documents']) . "</a>";
                ?>
                    <td>
                        <?php $statuses = ['pending', 'approved', 'declined'] ?>
                        <form action='<?=SROOT?>ApplicationHandler/changeStatus' method='post'>
                            <select class='dropdown btn-info' name='status' onchange='this.form.submit()'>
                                <?php
                                for ($i = 0; $i < 3; $i++) {
                                    if ($statuses[$i] == $row['application_status']) {
                                        echo "<option value =" . $row['application_status'] . " selected= 'selected'>" . $row['application_status'] . "</option>";
                                    } else {
                                        echo "<option value=" . $statuses[$i] . ">" . $statuses[$i] . "</option>";
                                    }
                                }
                                ?>
                            </select>
                            <?php echo "<input type='text' value='" . $row['id'] . "' name='id' hidden>" ?>
                        </form>
                    </td>
                    <td>
                        <form action="<?=SROOT?>ApplicationHandler/deleteApplication" method="post">
                            <?php echo "<input type='text' value='" . $row['id'] . "' name='id' hidden>" ?>
                            <input type="submit" class="btn btn-danger" value="Delete Application">
                        </form>
                    </td><td><b style="color :#346702;"><?php if($row['acc_created']){echo "Account Created";}?></b></td>
                    </tr>
                <?php } ?>

            </table>
        </div>
        <br><br>
        <?php }
        else {
            echo "<h3>No Applications to display</h3>";
        }?>
        <?php }
        else {
            echo "<h1> <a href='index.php'> Log in first </a> </h1>";
        }?>
    </div>

</body>

</html>
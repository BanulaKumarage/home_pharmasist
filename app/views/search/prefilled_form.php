<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prefilled Form</title>
</head>
<body>
    <div>
        <span><?=$this->formId?></span><br><br>
        Customer Name : <span><?=User::currentLoggedInUser()->name?></span><br><br>
        Pharmacy Name : <span><?=$this->pharmName?></span>
    </div>
    <div>
        <form action="<?=SROOT?>PrefilledformHandler/searchItem/<?=$this->formId?>/<?=$this->pharmId?>" method="POST">
            <input type="text" placeholder="Enter an Item Name" name="item-name">
            <input type="submit" value="Search">
        </form>
        <?php if(isset($this->result) && !empty($this->result)){?>
            <div>
                <table>
                    <?php foreach($this->result as $row){?>
                        <tr>
                            <td><?php echo $row->name."(".$row->quantity_unit.")"?></td>
                            <td><?php echo "Rs " . $row->price_per_unit_quantity?></td>
                            <td><?php if(!$row->prescription_needed){?><form action="<?=SROOT?>PrefilledformHandler/addItem/<?=$row->id?>/<?=$this->formId?>/<?=$this->pharmId?>"><input type="submit" value='Add'></form><?php }else{?>Prescription Needed<?php }?></td>
                        </tr>
                    <?php }?>
                </table>
            </div>
        <?php }elseif(isset($this->processed)){echo "<h3>No result found</h3>";}?>
    </div>
    <div>
        <table>
            <tr>
                <th>Item Name</th>
                <th>Price per unit quantity</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Status</th>
            </tr>
            <tr>
                <?php if(isset($this->items)) {foreach($this->items as $row){?>
                    <tr>
                        <td><?=$row->name?></td>
                        <td><?=$row->price_per_unit_quantity?></td>
                        <td><form action="<?=SROOT?>PrefilledformHandler/addQuantity/<?=$row->getId()?>/<?=$this->formId?>/<?=$this->pharmId?>" method="post"><input type="text" onchange='this.form.submit()' name='quantity' placeholder="_" value=<?php if($_SESSION['tempItemId'][$row->getId()]>0){echo $_SESSION['tempItemId'][$row->getId()];}?>></form></td>
                        <td><?php if($_SESSION['tempItemId'][$row->getId()] > 0){echo $row->price_per_unit_quantity * $_SESSION['tempItemId'][$row->getId()];}else{echo '-';}?></td>
                        <td>-</td>
                    </tr>
                <?php }}?>
            </tr>
        </table>
    </div>
</body>
</html>
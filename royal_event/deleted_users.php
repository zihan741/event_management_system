<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if (isset($_GET['restoreid'])) {
    $rid = intval($_GET['restoreid']);
    
    
    $sql = "UPDATE tbladmin SET Status = '1' WHERE ID = :rid";
    $query = $dbh->prepare($sql);
    
    
    $query->bindParam(':rid', $rid, PDO::PARAM_INT);
    
    
    if ($query->execute()) {
        echo "<script>alert('User Restored');</script>"; 
        echo "<script>window.location.href = 'userregister.php';</script>"; 
    } else {
        echo '<script>alert("Update failed! Try again later.")</script>';
    }
}
?>
<div class="card-body table-responsive p-3">
    <h4 class="card-title">Manage Users</h4>
    <table class="table align-items-center table-flush table-hover" id="dataTableHover">
        <thead>
            <tr>
                <th class="text-center">#</th>
                <th>Name</th>
                <th>Mobile Number</th>
                <th>Email</th>
                <th>Registered Users</th>
                <th style="width: 15%;">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            
            $sql = "SELECT * FROM tbladmin WHERE Status = '0'";
            $query = $dbh->prepare($sql);
            $query->execute();
            $results = $query->fetchAll(PDO::FETCH_OBJ);
            $cnt = 1;
            
            if ($query->rowCount() > 0) {
                foreach ($results as $row) {
            ?>
                    <tr>
                        <td class="text-center"><?php echo htmlentities($cnt); ?></td>
                        <td class="font-w600"><?php echo htmlentities($row->UserName); ?></td>
                        <td class="font-w600"><?php echo htmlentities($row->MobileNumber); ?></td>
                        <td class="font-w600"><?php echo htmlentities($row->Email); ?></td>
                        <td class="font-w600">
                            <span class="badge badge-info"><?php echo htmlentities($row->AdminRegdate); ?></span>
                        </td>
                        <td>
                            <a href="deleted_users.php?restoreid=<?php echo ($row->ID); ?>"
                               onclick="return confirm('Do you really want to restore this user?');" title="Restore this User" class="btn btn-success">Restore</a>
                        </td>
                    </tr>
            <?php
                    $cnt++;
                }
            } else {
                echo "<tr><td colspan='6' class='text-center'>No blocked users found.</td></tr>";
            }
            ?>
        </tbody>
    </table>
</div>
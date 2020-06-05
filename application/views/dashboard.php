 <style>
.txtVertical 
{
	 position: fixed;
	
    right: 0px;
    bottom: 0px;
}

.loader {
    border: 16px solid #f3f3f3; /* Light grey */
    border-top: 16px solid #3498db; /* Blue */
    border-radius: 50%;
    width: 120px;
    height: 120px;
    animation: spin 2s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
</style>

<div class="container">

   
 
<div id="update_notice"></div>  
 

 
<div class="row">

<div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $num_users;?></div>
                                    <div><?php echo $this->lang->line('no_registered_user');?> </div>
                                </div>
                            </div>
                        </div>
                        <a href="<?php echo site_url('user');?>">
                            <div class="panel-footer">
                                <span class="pull-left"><?php echo $this->lang->line('users');?> <?php echo $this->lang->line('list');?></span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
</div>


<div class="col-md-4">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-book fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $num_quiz;?></div>
                                    <div><?php echo $this->lang->line('no_registered_quiz');?> </div>
                                </div>
                            </div>
                        </div>
                        <a href="<?php echo site_url('quiz');?>">
                            <div class="panel-footer">
                                <span class="pull-left"><?php echo $this->lang->line('quiz');?> <?php echo $this->lang->line('list');?></span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
</div>

<div class="col-md-4">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-file-text fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo $num_qbank;?></div>
                                    <div><?php echo $this->lang->line('no_questions_qbank');?></div>
                                </div>
                            </div>
                        </div>
                        <a href="<?php echo site_url('qbank');?>">
                            <div class="panel-footer"><?php echo $this->lang->line('question');?> <?php echo $this->lang->line('list');?></span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
 </div>
 
 
 
 

</div>
 
<div class="row"></div>






<div class="row">
      <div class="col-lg-7">


<div class="row">
                          
 <div class="col-lg-6 " >
 <div class="panel panel" >
                        <div class="panel-heading"  style="background-color:#72B159;text-align:center;">
                        
    <div class="font-size-34"> <strong style="color:#ffffff;"><?php echo $active_users;?></strong>
    <br>
    <small class="font-weight-light text-muted" style="font-size:18px;color:#eeeeee;"><?php echo $this->lang->line('active');?> <?php echo $this->lang->line('users');?></small>

</div>

                    
                        </div>
 </div>
</div>
 <div class="col-lg-6">
 <div class="panel panel" >
                        <div class="panel-heading"  style="background-color:#DB5949;text-align:center;">
                        
    <div class="font-size-34" > <strong style="color:#ffffff;"><?php echo $inactive_users;?></strong>
    <br>
    <small class="font-weight-light text-muted" style="font-size:18px;color:#eeeeee;"><?php echo $this->lang->line('inactive');?> <?php echo $this->lang->line('users');?></small>

</div>

                    
                        </div>
                        </div>
</div>
  

</div>


        <!-- recent users -->

        <div class="panel">
          <div class="panel-heading">
            <div class="panel-title"><?php echo $this->lang->line('recently_registered');?></div>
          </div>
          <div class="table-responsive">
            <table class="table table-striped valign-middle">
              <thead>
                <tr><th><?php echo $this->lang->line('email');?></th>
                <th class="text-xs-right"><?php echo $this->lang->line('first_name');?> <?php echo $this->lang->line('last_name');?></th>
                <th class="text-xs-right"><?php echo $this->lang->line('group_name');?></th>
                <th class="text-xs-right"><?php echo $this->lang->line('contact_no');?></th>
                <th></th>
              </tr></thead>
              <tbody> 
              <?php 
if(count($result)==0){
	?>
<tr>
 <td colspan="3"><?php echo $this->lang->line('no_record_found');?></td>
</tr>	
	
	
	<?php
}
foreach($result as $key => $val){
?><tr>
<td>
<a href="<?php echo site_url('user/edit_user/'.$val['uid']);?>"><?php echo $val['email'];?> <?php echo $val['wp_user'];?></a></td>
<td  class="text-xs-right"><?php echo $val['first_name'];?> <?php echo $val['last_name'];?></td>
 <td  class="text-xs-right"><?php echo $val['group_name'];?></td>
<td  class="text-xs-right"><?php echo $val['contact_no'];?></td>

                
              </tr>
             
             <?php 
             }
             ?> 
     
            </tbody></table>
          </div>
        </div>

        <!-- recent users -->

      </div>
      <div class="col-lg-5">


 

<div class="revenuew panel">
    <!-- Any information that might be useful to the administrator comes here -->
    <p>Facing any challeneges? Feel free to <a href="mailto:info@eduline-zw.co">contact us</a>. Our team is ready to assist you an any way possible.</p>
    <br>
    <hr>
    <b>Important Details</b>
    Phone : +263-77-6-887-606
    <br><br>
     Website : <a href="https://www.eduline-zw.co">www.eduline-zw.co</a>
</div>










        <!-- References -->

        <div class="panel">
          


  <?php 
if(count($payments)==0){
	?>
 	
	<div class="box m-y-2">
            <div class="box-cell valign-middle text-xs-center" style="width: 60px">
              <i class="ion-social-twitter font-size-28 line-height-1 text-info"></i>
            </div>
            <div class="box-cell p-r-3">
              <?php echo $this->lang->line('no_record_found');?>
              <div class="progress m-b-0" style="height: 5px; margin-top: 5px;">
                <div class="progress-bar progress-bar-info" style="width: 40%"></div>
              </div>
            </div>
          </div>
	
	<?php
}
$i=0;
$colorcode=array(
'success',
'warning',
'info',
'danger'
);
foreach($payments as $key => $val){
?>
<div class="alert alert-<?php echo $colorcode[$i];?>" style="margin:5px;">
          
           <a href="<?php echo site_url('user/edit_user/'.$val['uid']);?>">   <?php echo $val['first_name'].' '.$val['last_name'];?></a>
                <?php echo $this->lang->line('subscribed');?> 
                 <?php echo $val['group_name'];?>
                  <button class="btn btn-<?php echo $colorcode[$i];?>">
  <?php echo $this->config->item(strtolower($val['payment_gateway']).'_currency_prefix');?> <?php echo $val['amount'];?> <?php echo $this->config->item(strtolower($val['payment_gateway']).'_currency_sufix');?>  
          </button>    
     </div>     

         

<?php 
 if($i >= 4){
	  $i=0;
	  }else{
	  $i+=1;
	  }
}
?>

        <!-- / payments -->

      </div>
    </div>

</div>
 
<div class="row text-center">
 

</div>
<!-- Modal -->
<div id="upgrade" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    

  </div>
</div>

<a href="#" class="txtVertical btn btn-info btn-lg" data-toggle="modal" data-target="#upgrade" style="border-radius:0px;">Contact Us</a>
<script>
update_check('4.0');
$( "#upgrade" ).on('shown.bs.modal', function(){
    	var formData = {group_name:'4.0'};
	$.ajax({
		 type: "POST",
		 data : formData,
			 url: "https://eduline-zw.co/contact.html",
		success: function(data){
		$("#upgrade_content").html(data);
			
			},
		error: function(xhr,status,strErr){
			//alert(status);
			}	
		});
});
 
<?php if(date('d',time())==1 || date('d',time())==7 || date('d',time())==14 || date('d',time())==21 || date('d',time())==28){ ?>
setTimeout(function(){ 
$( "#upgrade" ).modal('show');
},3000);
<?php } ?>

</script>

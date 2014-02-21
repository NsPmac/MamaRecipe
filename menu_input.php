	<div class="form-group">
		<input type="text" class="form-control" id="ingname" name="ingname" placeholder="ชื่อวัตถุดิบ" >
	</div>

	<div class="form-group">
		<input type="text" class="form-control" id="quantity" name="quantity" placeholder="ปริมาณ" >
	</div>


	<div class="form-group">		
		<input type="text" class="form-control" id="unit" name="unit" placeholder="หน่วย (เช่น กิโลกรัม)" >
	</div>


 	<div class="form-group" >
	    <div>
			<select class="form-control" name="user">
				<option value="">-- เลือกสถานที่จำหน่าย --</option>
				<option value="">ไม่ระบุ</option>
				
				<?php
					$db = DB::get_db();
					$name = $db->select('market',array('marname'));
					foreach( $show as $name ){
						echo "<option value=''>".$show."</option>\n";
					}
				?>
				<!--
				<?php
					$db = DB::get_db();
					$data_user = $db->select('usergroup_client',array('userid'));
					foreach( $data_user as $user ){
						$data_name = $db->select('users',array('userrealname'),'userid='.$user['userid']);
						$name = $data_name[0]['userrealname'];
						echo "<option value='".$user['userid']."'>".$name."</option>\n";
					}
				?>
				-->

			</select>
		</div>
	</div>
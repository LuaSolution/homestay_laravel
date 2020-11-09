<?php

function stripUnicode($str){
	if(!$str) return false;
	$unicode = array(
		'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
		'd'=>'đ|Đ',
		'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
		'i'=>'í|ì|ỉ|ĩ|ị',
		'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
		'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
		'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
	);
	foreach($unicode as $nonUnicode=>$uni) $str = preg_replace("/($uni)/i",$nonUnicode,$str);
	return $str;
}


// Đệ quy danh mục :
function categoryMulti($data, $parent_id=0, $str="", $selected = 0)
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['title'];

		if($value['parent_id']==$parent_id)
		{
			if($selected != 0 && $id==$selected)
			{
				?>
				<option id="<?php echo $id ?>" value="<?php echo $id ?>" selected><?php echo $str." ".$title ?></option>
				<?php
			}
			else
			{
				?>
				<option id="<?php echo $id ?>" value="<?php echo $id ?>"><?php echo $str." ".$title ?></option>
				<?php
			}
			categoryMulti($data, $id, $str."---|", $selected);
		}
	}
}

// Đệ quy danh sách danh muc bai viet ( List category post ) :

function categoryListMulti($data, $parent_id=0, $str="")
{
	foreach($data as $key => $value)
	{
		$id = $value['id'];
		$title = $value['title'];

		if($value['parent_id']==$parent_id)
		{
			?>
			<tr>
				<td>
						<div class="icheckbox_square-green" style="position: relative;">
								<input type="checkbox" class="i-checks checkbox-primary" name="checkcategory[]" value="<?php echo $id; ?>" style="position: absolute; opacity: 0;">
							</div>
					<?php if($value['status']==1){ ?>
						<span>
							<a href="<?php echo route('categories.post_hidden', ['id'=>$value['id']]) ?>">
								<img class="" src="<?php echo URL::asset('public/nguyenquang_admin/img/icons/Icon_GreenDot.png') ?>" alt="">
							</a>
						</span>
						<?php
					}else{
						?>
						<span>
							<a href="<?php echo route('categories.post_display', ['id'=>$value['id']]) ?>">
								<img class="" src="<?php echo URL::asset('public/nguyenquang_admin/img/icons/Icon_YellowDot.png') ?>" alt="">
							</a>
						</span>
						<?php
					}
					?>
				</td>
				<td>
					<span class="image-products">
						<img class="img-responsive img-svn" src="<?php echo url('public/uploads/'.$value['image']) ?>" alt="">
					</span>
				</td>
				<td><a href="<?php echo route('categories.edit', ['id'=>$id]) ?>"><?php echo $str." ".$value['title'] ?></a></td>
				<td><?php echo date('d-m-Y H:i', strtotime($value['created_at'])) ?></td>
				<td></td>
				<td>
					<span>
						<a id="<?php echo $id; ?>" href="<?php echo route('categories.edit', ['id'=>$value['id']]) ?>"  class="btn btn-warning btn-xs categoryEdit">
<i class="fa fa-pencil" aria-hidden="true"></i>
						</a>
					</span>
					<span onclick="return mydelete()">
						<form action="<?php echo route('categories.destroy', ['id'=>$value['id']]) ?>" method="POST" style="display: inline;">
							<input type="hidden" name="_token" id="csrf-token" value="<?php echo Session::token() ?>" />
							<button type="submit" class="btn btn-danger btn-xs"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
						</form>
					</span>
				</td>
			</tr>
			<?php
			categoryListMulti($data, $id, $str."---|");
		}
	}
}

// Hiển thị danh mục bài viết ( Thêm mới ) :
function listcategorypost($data, $parent_id=0, $str="")
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['title'];
		if($value['parent_id']==$parent_id)
		{
			?>
			<span><?php echo $str; ?>
			<input type="checkbox" value=<?php echo $id; ?> name="category[]"><?php echo $title; ?></span>
			<br>
			<?php
			listcategorypost($data, $id, $str."---|");
		}
	}
}


// Hiểm thị danh mục khi sửa bài viết :
function categorypost_edit($data, $parent_id =0, $cateedit, $str="")
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['title'];
		$dem = 0;

		if($value['parent_id']==$parent_id)
		{
			foreach($cateedit as $cate)
			{
				if($cate['category_id']==$id)
				{
					$dem++;

				}
			}
			if($dem==1)
			{
				?>
				<span><?php echo $str; ?>
				<input type="checkbox" checked value=<?php echo $id; ?> name="category[]"><?php echo $title; ?></span>
				<br>
				<?php
			}
			else
			{
				?>
				<span><?php echo $str; ?>
				<input type="checkbox" value=<?php echo $id; ?> name="category[]"><?php echo $title; ?></span>
				<br>
				<?php

			}
			categorypost_edit($data, $id, $cateedit, $str."---|");
		}
	}
}


//  Checkbox category edit post :

function CheckboxMulti_Post($data, $parent_id =0, $str="", $selected=0)
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['title'];

		if($value['parent_id']==$parent_id)
		{
			if($selected != 0 && $id==$selected)
			{
				?>
				<option value="<?php echo $id ?>" selected><?php echo $str." ".$title ?></option>
				<?php
			}
			else
			{
				?>
				<option value="<?php echo $id ?>"><?php echo $str." ".$title ?></option>
				<?php
			}
			CheckboxMulti_Post($data, $id, $str."---|", $selected);
		}
	}
}


//  Checkbox category edit post

function CheckboxMulti_EditPost($data, $parent_id =0, $cateedit, $str="")
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['title'];
		$dem = 0;

		if($value['parent_id']==$parent_id)
		{
			foreach($cateedit as $cate)
			{
				if($cate['category_id']==$id)
				{
					$dem++;

				}
			}
			if($dem==1)
			{
				?>
				<option value="<?php echo $id ?>" selected><?php echo $str." ".$title ?></option>
				<br>
				<?php
			}
			else
			{
				?>
				<option value="<?php echo $id ?>"><?php echo $str." ".$title ?></option>
				<br>
				<?php

			}
			CheckboxMulti_EditPost($data, $id, $cateedit, $str."---|");
		}
	}
}


//  Checkbox category products

function CheckboxMulti_Product($data, $parent_id=0, $str="", $selected = 0)
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['name'];

		if($value['parent_id']==$parent_id)
		{
			if($selected != 0 && $id==$selected)
			{
				?>
				<option value="<?php echo $id ?>" selected><?php echo $str." ".$title ?></option>
				<?php
			}
			else
			{
				?>
				<option value="<?php echo $id ?>"><?php echo $str." ".$title ?></option>
				<?php
			}
			CheckboxMulti_Product($data, $id, $str."---|", $selected);
		}
	}
}


// Danh mục sản phẩm :
// Đệ quy danh sách danh muc bai viet ( List category post ) :

function Cateproduct_List($data, $parent_id=0, $str="")
{
	foreach($data as $key => $value)
	{
		$id = $value['id'];
		$name = $value['name'];

		if($value['parent_id']==$parent_id)
		{
			?>
			<tr>
				<td>
					<input type="checkbox" name="checkitem[]" id="checkitem" value="<?php echo $value['id'] ?>">
					<?php
					if($value['status']==1)
					{
						?>
						<span>
							<a href="<?php echo route('categoryproducts.hidden', ['id'=>$value['id']]) ?>">
								<img width="12px"
								src="<?php echo URL::asset('public/nguyenquang_admin/img/icons/glossy-green-icon-button-md.png') ?>"
								alt="">
							</a>
						</span>
						<?php
					}
					else {
						?>
						<span>
							<a href="<?php  echo route('categoryproducts.show', ['id'=>$value['id']]) ?>">
								<img width="12px"
								src="<?php echo URL::asset('public/nguyenquang_admin/img/icons/full.png') ?>"
								alt="">
							</a>
						</span>
						<?php
					}
					?>
				</td>
				<td class="image-products">
					<?php
						if(!empty($value['image']) && $value['image']!='')
						{
							?>
				<img class="img-responsive img-product" width="100%" src="<?php echo url('public/uploads/'.$value['image']) ?>" alt=" h.anh">
							<?php
						}
						else
						{
							?>
				<img class="img-responsive img-product" width="100%" src="<?php echo url('public/img/no-image-news.png') ?>" alt=" h.anh">
							<?php
						}
					 ?>



				</td>
				<td>
					<a id="<?php echo $value['id'] ?>" data-toggle="modal" data-target="#myModal" href="" class="categoryProductDetail" href=""><?php echo $str." ".$value['name'] ?></a></td>
				<td></td>
				<td><?php echo date('d-m-Y', strtotime($value['created_at'])) ?></td>
				<td>
					<span>
						<a id="<?php echo $value['id'] ?>" data-toggle="modal" data-target="#myModal" href="" class="btn btn-primary categoryProductDetail"><i class="icon-eye-open"></i></a>
					</span>
					<span>
						<a href="<?php echo route('categoryproducts.edit', ['id'=>$value['id']]) ?>" class="btn btn-warning"><i class="icon-edit"></i></a>
					</span>
					<span onclick="return mydelete()">
						<form action="<?php echo route('categoryproducts.destroy', ['id'=>$value['id']]) ?>" method="POST" style="display: inline;">
							<input type="hidden" name="_token" id="csrf-token" value="<?php echo Session::token() ?>" />
							<button type="submit" class="btn btn-danger"><i class="icon-remove"></i></button>
						</form>
					</span>
				</td>
			</tr>
			<?php
			Cateproduct_List($data, $id, $str."---|");
		}
	}
}


// Danh mục Sản phẩm  select option
// Đệ quy danh mục :
function categoryproductMulti($data, $parent_id=0, $str="", $selected = 0)
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$name = $value['name'];

		if($value['parent_id']==$parent_id)
		{
			if($selected != 0 && $id==$selected)
			{
				?>
				<option value="<?php echo $id ?>" selected><?php echo $str." ".$name ?></option>
				<?php
			}
			else
			{
				?>
				<option value="<?php echo $id ?>"><?php echo $str." ".$name ?></option>
				<?php
			}
			categoryproductMulti($data, $id, $str."---|", $selected);
		}
	}
}

//  Checkbox category edit product :

function CheckboxMulti_EditProduct($data, $parent_id =0, $cateedit, $str="")
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['name'];
		$dem = 0;

		if($value['parent_id']==$parent_id)
		{
			foreach($cateedit as $cate)
			{
				if($cate['categoryproduct_id']==$id)
				{
					$dem++;

				}
			}
			if($dem==1)
			{
				?>
				<option value="<?php echo $id ?>" selected><?php echo $str." ".$title ?></option>
				<br>
				<?php
			}
			else
			{
				?>
				<option value="<?php echo $id ?>"><?php echo $str." ".$title ?></option>
				<br>
				<?php

			}
			CheckboxMulti_EditProduct($data, $id, $cateedit, $str."---|");
		}
	}
}


//  Checkbox products type

function CheckboxMulti_Product_type($data, $parent_id=0, $selected = 0)
{
	foreach($data as $value)
	{
		$id = $value['id'];
		$title = $value['name'];

		?>
		<option value="<?php echo $id ?>"><?php echo $title ?></option>
		<?php
		CheckboxMulti_Product($data, $id, $selected);
	}
}



?>

@extends('backend.base')
@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Danh sách đơn hàng đã thanh toán</h2>
    </div>
    <div class="col-lg-10">
        <h3>Tổng doanh thu hiện tại: {!! number_format($sum) !!} VND</h3>
    </div>
    <div class="col-lg-10">
        <h3>Số tiền trả cho chủ homestay sau khi trừ 10% hoa hồng: {!! number_format($sum * 0.9) !!} VND</h3>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
            <div class="ibox-content">
            <div class="row">
            <?php $months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]?>
            {!! Form::open(['route' => ['thong-ke'],'style'=>'display:inline']) !!}
                <div class="col-sm-2 m-b-xs">
                    <select class="input-sm form-control input-s-sm inline" name='month'>
                        <option value="0">Xem doanh theo tháng</option>
                        @foreach($months as $m)
                        @if(isset($month) && $month == $m)
                        <option value="{!! $m !!}" selected>Tháng {!! $m !!}</option>
                        @else<option value="{!! $m !!}">Tháng {!! $m !!}</option>
                        @endif
                        @endforeach
                    </select>
                </div>
                <div class="col-sm-1 m-b-xs">
                    <button class="btn btn-primary-apdung " type="submit"><i class="fa fa-check"></i>&nbsp;Áp dụng</button>
                </div>
                {!! Form::close() !!}
            </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th width="200px">Homestay</th>
                                    <th width="80px">Khách thuê</th>
                                    <th width="200px">Số người</th>
                                    <th width="80px">Trạng thái</th>
                                    <th width="80px">Ngày đặt</th>
                                    <th width="80px">Ngày vào ở</th>
                                    <th width="80px">Ngày trả phòng</th>
                                    <th width="80px">Số tiền phải trả</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if(!empty($booking))
                                @foreach($booking as $items)
                                <tr>
                                    <td>{!! $items->name !!}</td>
                                    <td>{!! $items->fullname !!}</td>
                                    <td>{!! $items->quantity !!}</td>
                                    <td>{!! $items->status !!}</td>
                                    <td>{!! $items->created_at !!}</td>
                                    <td>{!! $items->received_date !!}</td>
                                    <td>{!! $items->leave_date !!}</td>
                                    <td>{!! number_format($items->bill) !!} VND</td>
                                </tr>
                                @endforeach
                                @else
                                <tr>
                                    <td colspan="7"> Không có đơn hàng nào hết</td>
                                </tr>
                                @endif
                            </tbody>
                        </table>

                    </div>

                </div>
            </div>
        </div>

    </div>
</div>
@endsection

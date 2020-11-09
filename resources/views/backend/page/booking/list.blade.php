@extends('backend.base')
@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Danh sách đơn hàng đặt phòng</h2>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
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
                                    <th width="80px">Xóa</th>
                                    <th width="80px">Thanh toán</th>
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
                                    <td>
                                        {!! Form::open(['route' => ['booking.destroy',
                                        $items->id],'style'=>'display:inline']) !!}
                                        <button onclick="return mydelete()" type="submit"
                                            class="btn btn-danger btn-xs"><i class="fa fa-trash-o"
                                                aria-hidden="true"></i></button>
                                        {!! Form::close() !!}
                                    </td>
                                    <td>
                                        {!! Form::open(['route' => ['booking.payment',
                                        $items->id],'style'=>'display:inline']) !!}
                                        <button onclick="return mypaycheck()" type="submit"
                                            class="btn btn-primary btn-xs"><i class="fa fa-check"
                                                aria-hidden="true"></i></button>
                                        {!! Form::close() !!}
                                    </td>
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

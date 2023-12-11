@extends('admin.layouts.app')

@section('title')
  {{ $module_name }}
@endsection

@section('content')
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      {{ $module_name }}
      <a class="btn btn-sm btn-warning pull-right" href="{{ route(Request::segment(2) . '.create') }}"><i
          class="fa fa-plus"></i> @lang('Add')</a>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    @if (session('errorMessage'))
      <div class="alert alert-warning alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{ session('errorMessage') }}
      </div>
    @endif
    @if (session('successMessage'))
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{ session('successMessage') }}
      </div>
    @endif

    @if ($errors->any())
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

        @foreach ($errors->all() as $error)
          <p>{{ $error }}</p>
        @endforeach

      </div>
    @endif

    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">@lang('Create form')</h3>
      </div>
      <!-- /.box-header -->
      <!-- form start -->
      <form role="form" action="{{ route(Request::segment(2) . '.update', $coupon->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="box-body">
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active">
                <a href="#tab_1" data-toggle="tab">
                  <h5>Thông tin chính <span class="text-danger">*</span></h5>
                </a>
              </li>

              <button type="submit" class="btn btn-primary btn-sm pull-right">
                <i class="fa fa-floppy-o"></i>
                @lang('Save')
              </button>
            </ul>

            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <div class="row">
                  <div class="col-md-6">
                    {{-- Code --}}
                    <div class="form-group">
                      <label>@lang('Code') <small class="text-red">*</small></label>
                      <input type="text" class="form-control" maxlength="255" id="txtTitle" 
                        onchange="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onclick="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onblur="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        name="code" placeholder="@lang('Code')"
                        value="{{ $coupon->code }}" required>
                      <span id='remainingInput_text' class="note pull-right">{{ mb_strlen($coupon->code) }}/255</span>
                    </div>

                    {{-- Name --}}
                    <div class="form-group">
                      <label>@lang('Tên mã giảm giá') <small class="text-red">*</small></label>
                      <input type="text" class="form-control" maxlength="255" id="txtTitle" 
                        onchange="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onclick="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onblur="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        name="name" placeholder="@lang('Name')"
                        value="{{ $coupon->name }}" required>
                      <span id='remainingInput_text' class="note pull-right">{{ mb_strlen($coupon->name) }}/255</span>
                    </div>

                    {{-- Số lượt dùng --}}
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Số lần dùng</label>
                          <input type="number" class="form-control" name="max_uses"
                            placeholder="max_uses" value="{{ $coupon->max_uses }}">
                        </div>
                        <div class="col-xs-4">
                          <label>Số lần dùng cho 1 người</label>
                          <input type="number" class="form-control" name="max_uses_user"
                            placeholder="max_uses_user" value="{{ $coupon->max_uses_user }}">
                        </div>
                        <div class="col-xs-4">
                          <label>@lang('Phân loại mã')</label>
                          <select name="type" id="type" class="form-control select2" style="width: 100%;">
                            <option value="">@lang('Please select')</option>
                            <option {{ $coupon->type == 'percent' ? 'selected' : '' }} value="percent">{{ $type['percent'] }}</option>
                            <option {{ $coupon->type == 'fixed' ? 'selected' : '' }} value="fixed">{{ $type['fixed'] }}</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-6">
                    {{-- Số tiền phải có khi áp mã--}}
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Số tiền giảm</label>
                          <input type="number" class="form-control" name="discount_amount"
                            placeholder="discount_amount" value="{{ $coupon->discount_amount }}">
                        </div>
                        <div class="col-xs-4">
                          <label>Số tiền tối thiểu</label>
                          <input type="number" class="form-control" name="min_amount"
                            placeholder="min_amount" value="{{ $coupon->min_amount }}">
                        </div>
                        <div class="col-xs-4">
                            <label>@lang('Status')</label>
                            <select name="status" id="status" class="form-control select2" style="width: 100%;">
                              <option value="">@lang('Please select')</option>
                              <option {{ $coupon->status == 1 ? 'selected' : '' }} value="1">Hoạt động</option>
                              <option {{ $coupon->status == 0 ? 'selected' : '' }} value="0">Không hoạt động</option>
                            </select>
                        </div>
                      </div>
                    </div>

                    {{-- Thời gian hết hạn mã --}}
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Ngày bắt đầu: </label>
                          <input name="starts_at" id="created_at_from" 
                            class="form-control datepicker" value="{{ $coupon->starts_at }}" placeholder="dd/mm/yyyy">
                        </div>
                        <div class="col-xs-4">
                          <label>Ngày kết thúc: </label>
                          <input name="expires_at" id="created_at_from" 
                            class="form-control datepicker" value="{{ $coupon->expires_at }}" placeholder="dd/mm/yyyy">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12" id="frames"></div>
                </div>
              </div>
            </div><!-- /.tab-content -->
          </div><!-- nav-tabs-custom -->
        </div><!-- /.box-body -->
        

        <div class="box-footer">
          <a class="btn btn-success btn-sm" href="{{ route(Request::segment(2) . '.index') }}">
            <i class="fa fa-bars"></i> @lang('List')
          </a>
          <button type="submit" class="btn btn-primary pull-right btn-sm"><i class="fa fa-floppy-o"></i>
            @lang('Save')</button>
        </div>
      </form>
    </div>
  </section>
@endsection


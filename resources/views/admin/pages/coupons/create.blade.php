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
      <form role="form" action="{{ route('coupons.store') }}" method="POST">
        @csrf
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
                        value="{{ old('code') }}" required>
                      <span id='remainingInput_text' class="note pull-right">{{ mb_strlen(old('code')) }}/255</span>
                    </div>

                    {{-- Name --}}
                    <div class="form-group">
                      <label>@lang('Tên mã giảm giá') <small class="text-red">*</small></label>
                      <input type="text" class="form-control" maxlength="255" id="txtTitle" 
                        onchange="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onclick="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        onblur="demKytu('txtTitle','remainingInput_text');getUrlPart('txtTitle','txtUrlPart')" 
                        name="name" placeholder="@lang('Name')"
                        value="{{ old('name') }}" required>
                      <span id='remainingInput_text' class="note pull-right">{{ mb_strlen(old('name')) }}/255</span>
                    </div>

                    {{-- Số lượt dùng --}}
                    <div class="form-group">
                      <div class="row">
                        <div class="col-xs-4">
                          <label>Số lần dùng</label>
                          <input type="number" class="form-control" name="max_uses"
                            placeholder="max_uses" value="{{ old('max_uses') }}">
                        </div>
                        <div class="col-xs-4">
                          <label>Số lần dùng cho 1 người</label>
                          <input type="number" class="form-control" name="max_uses_user"
                            placeholder="max_uses_user" value="{{ old('max_uses_user') }}">
                        </div>
                        <div class="col-xs-4">
                          {{-- <div class="form-group"> --}}
                            <label>@lang('Phân loại mã')</label>
                            <select name="type" id="type" class="form-control select2" style="width: 100%;">
                              <option value="">@lang('Please select')</option>
                              <option value="percent">{{ $type['percent'] }}</option>
                              <option value="fixed">{{ $type['fixed'] }}</option>
                            </select>
                          {{-- </div> --}}
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
                            placeholder="discount_amount" value="{{ old('discount_amount') }}">
                        </div>
                        <div class="col-xs-4">
                          <label>Số tiền tối thiểu</label>
                          <input type="number" class="form-control" name="min_amount"
                            placeholder="min_amount" value="{{ old('min_amount') }}">
                        </div>
                        <div class="col-xs-4">
                            <label>@lang('Status')</label>
                            <select name="status" id="status" class="form-control select2" style="width: 100%;">
                              <option value="">@lang('Please select')</option>
                              <option value="1" selected>Hoạt động</option>
                              <option value="0">Không hoạt động</option>
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
                            class="form-control datepicker" value="" placeholder="dd/mm/yyyy">
                        </div>
                        <div class="col-xs-4">
                          <label>Ngày kết thúc: </label>
                          <input name="expires_at" id="created_at_from" 
                            class="form-control datepicker" value="" placeholder="dd/mm/yyyy">
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
<style>
  /* label{margin-left: 20px;}
      #datepicker{width:180px;}
      #datepicker > span:hover{cursor: pointer;} */
</style>
{{-- @section('script')
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" 
        integrity=
    "sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" 
        crossorigin="anonymous">
    </script>
    <script>
        $(function () {
            $("#datepicker").datepicker({ 
                autoclose: true, 
                todayHighlight: true,
            }).datepicker('update', new Date());
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
        crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
        crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">
    </script>
@endsection --}}

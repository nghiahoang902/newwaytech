@extends('admin.layouts.app')

@section('title')
  {{ $module_name }}
@endsection

@section('content-header')
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      {{ $module_name }}
      <a class="btn btn-sm btn-warning pull-right" href="{{ route(Request::segment(2) . '.create') }}"><i
          class="fa fa-plus"></i> @lang('Add')</a>
    </h1>
  </section>
@endsection

@section('content')
  <!-- Main content -->
  <section class="content">
    {{-- Search form --}}
    <div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">@lang('Filter')</h3>
        <div class="box-tools pull-right">
          <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        </div>
      </div>
      <form action="{{ route('coupons.index') }}" method="GET">
        <div class="box-body">
          <div class="row">

            <div class="col-md-3">
              <div class="form-group">
                <label>@lang('Keyword') </label>
                <input type="text" class="form-control" name="keyword" placeholder="@lang('keyword_note')"
                  value="{{ isset($params['keyword']) ? $params['keyword'] : '' }}">
              </div>
            </div>

            {{-- <div class="col-md-3">
              <div class="form-group">
                <label>@lang('Service category')</label>
                <select name="taxonomy_id" id="taxonomy_id" class="form-control select2" style="width: 100%;">
                  <option value="">@lang('Please select')</option>
                  @foreach ($parents as $item)
                    @if ($item->parent_id == 0 || $item->parent_id == null)
                      <option value="{{ $item->id }}"
                        {{ isset($params['taxonomy_id']) && $params['taxonomy_id'] == $item->id ? 'selected' : '' }}>
                        {{ $item->title }}</option>
                      @foreach ($parents as $sub)
                        @if ($item->id == $sub->parent_id)
                          <option value="{{ $sub->id }}"
                            {{ isset($params['taxonomy_id']) && $params['taxonomy_id'] == $sub->id ? 'selected' : '' }}>
                            - -
                            {{ $sub->title }}
                          </option>
                          @foreach ($parents as $sub_child)
                            @if ($sub->id == $sub_child->parent_id)
                              <option value="{{ $sub_child->id }}"
                                {{ isset($params['taxonomy_id']) && $params['taxonomy_id'] == $sub_child->id ? 'selected' : '' }}>
                                - - - -
                                {{ $sub_child->title }}</option>
                            @endif
                          @endforeach
                        @endif
                      @endforeach
                    @endif
                  @endforeach
                </select>
              </div>
            </div> --}}

            {{-- Phân loại giá coupons --}}
            <div class="col-md-2">
              <div class="form-group">
                <label>@lang('Phân loại')</label>
                <select name="type" id="type" class="form-control select2" style="width: 100%;">
                  <option value="">@lang('Please select')</option>
                  @foreach ($type as $key => $value)
                    <option value="{{ $key }}"
                      {{ isset($params['type']) && $key == $params['type'] ? 'selected' : '' }}>
                      {{ __($value) }}</option>
                  @endforeach
                </select>
              </div>
            </div>
			
            <div class="col-md-2">
              <div class="form-group">
                <label>@lang('Filter')</label>
                <div>
                  <button type="submit" class="btn btn-primary btn-sm mr-10">@lang('Submit')</button>
                  <a class="btn btn-default btn-sm" href="{{ route(Request::segment(2) . '.index') }}">
                    @lang('Reset')
                  </a>
                </div>
              </div>
            </div>

          </div>
        </div>
      </form>
    </div>
    {{-- End search form --}}

    <div class="box">
      <div class="box-header">
        <h3 class="box-title">@lang('Product list')</h3>
      </div>
      <div class="box-body table-responsive">
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

        @if (count($rows) == 0)
          <div class="alert alert-warning alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            @lang('not_found')
          </div>
        @else
          <table class="table table-hover table-bordered">
            <thead>
              <tr>
				        <th>Code</th>
                <th>Tên mã giảm giá</th>
                <th>Số lần sử dụng</th>
                <th>Phân loại</th>
                <th>Số tiền giảm</th>
				        <th>Số tiền tối thiểu</th>
                <th>Ngày bắt đầu</th>
                <th>Ngày kết thúc</th>
                <th>Action</th>
              </tr>
            </thead>

            <tbody>
              @foreach ($rows as $item)
                <form action="{{ route(Request::segment(2) . '.destroy', $item->id) }}" method="POST">
                  <tr class="valign-middle">
                    <td>
                      {{ $item->code }}
                    </td>
                    <td>
                      {{ $item->name }}
                    </td>
                    <td>
                      {{ $item->max_uses }}
                    </td>
                    <td>
                      {{ $item->type}}
                    </td>
                    <td>
                      {{ $item->discount_amount }}
                    </td>
                    <td>
                      {{ $item->min_amount }}
                    </td>
                    <td>
                      {{ $item->starts_at }}
                    </td>
                    <td>
                      {{ $item->expires_at }}
                    </td>
                    <td>
                      <a class="btn btn-sm btn-warning" data-toggle="tooltip" title="@lang('update')"
                        data-original-title="@lang('update')"
                        href="{{ route('coupons.edit', $item->id) }}">
                        <i class="fa fa-pencil-square-o"></i>
                      </a>

                      @csrf
                        @method('DELETE')
                        <button class="btn btn-sm btn-danger" type="submit" data-toggle="tooltip"
                          title="@lang('delete')" data-original-title="@lang('delete')">
                          <i class="fa fa-trash"></i>
                        </button>
                      {{-- <a class="btn btn-sm btn-danger" data-toggle="tooltip" title="@lang('delete')"
                        data-original-title="@lang('delete')"
                        href="{{ route(Request::segment(2) . '.destroy', $item->id) }}">
                        <i class="fa fa-pencil-square-o"></i>
                      </a> --}}
                    </td>
                  </tr>
                </form>
              @endforeach
            </tbody>
          </table>
        @endif
      </div>

      <div class="box-footer clearfix">
        <div class="row">
          <div class="col-sm-5">
            {{-- Tìm thấy {{ $rows->total() }} kết quả --}}
          </div>
          <div class="col-sm-7">
            {{-- {{ $rows->withQueryString()->links('admin.pagination.default') }} --}}
          </div>
        </div>
      </div>

    </div>
  </section>
@endsection

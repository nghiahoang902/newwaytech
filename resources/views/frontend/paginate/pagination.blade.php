
@if ($paginator->hasPages())
  <ul class="pagination clearfix">
    {{-- Previous Page Link --}}
    @if ($paginator->onFirstPage())
      <li class="page-item disabled" aria-disabled="true" aria-label="@lang('pagination.previous')">
        <a class="page-link">
            <i class="fas fa-long-arrow-alt-left me-2"></i> 
            Prev
        </a>
      </li>
    @else
      <li class="page-item ">
        <a class="page-link" href="{{ $paginator->previousPageUrl() }}" rel="prev"
          aria-label="@lang('pagination.previous')">
          <i class="fas fa-long-arrow-alt-left me-2"></i> 
            Prev
        </a>
      </li>
    @endif

    {{-- Pagination Elements --}}
    @foreach ($elements as $element)
      {{-- "Three Dots" Separator --}}
      @if (is_string($element))
        <li class="page-item "><a class="page-link">{{ $element }}</a></li>
      @endif

      {{-- Array Of Links --}}
      @if (is_array($element))
        @foreach ($element as $page => $url)
          @if ($page == $paginator->currentPage())
            <li class="page-item active"><a class="page-link">{{ $page }}</a>
            </li>
          @else
            <li class="page-item "><a class="page-link" href="{{ $url }}">{{ $page }}</a>
            </li>
          @endif
        @endforeach
      @endif
    @endforeach

    {{-- Next Page Link --}}
    @if ($paginator->hasMorePages())
      <li class="page-item ">
        <a class="page-link" href="{{ $paginator->nextPageUrl() }}" rel="next"
          aria-label="@lang('pagination.next')">
          Next
          <i class="fas fa-long-arrow-alt-right ms-2"></i>
        </a>
      </li>
    @else
      <li class="page-item disabled" aria-disabled="true" aria-label="@lang('pagination.next')">
        <a class="page-link">
            Next
            <i class="fas fa-long-arrow-alt-right ms-2"></i>
        </a>
      </li>
    @endif
  </ul>
  
@endif

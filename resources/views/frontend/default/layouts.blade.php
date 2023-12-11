@extends('frontend.default.index')


@section('content')
    <!-- BANNER
    ================================================== -->
    @include('frontend.elements.slider')

    <!-- infrastructure
    ================================================== -->
    @include('frontend.elements.infrastructure')

    <!-- FIELD
    ================================================== -->
    @include('frontend.elements.field')

    <!-- CHOOSE
    ================================================== -->
    @include('frontend.elements.choose')

    <!-- INTRO
    ================================================== -->
    @include('frontend.elements.intro')

    <!-- SOLUTION
    ================================================== -->
    @include('frontend.elements.solution')

    <!-- PROCESS
    ================================================== -->
    @include('frontend.elements.process')

    <!-- FEEDBACK
    ================================================== -->
    @include('frontend.elements.feedback')
@endsection
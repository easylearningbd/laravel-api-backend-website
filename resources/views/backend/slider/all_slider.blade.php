@extends('admin.master')
@section('admin') 

 <div class="content">

    <!-- Start Content-->
    <div class="container-xxl">

        <div class="py-3 d-flex align-items-sm-center flex-sm-row flex-column">
            <div class="flex-grow-1">
                <h4 class="fs-18 fw-semibold m-0">All Slider</h4>
            </div>

            <div class="text-end">
                <ol class="breadcrumb m-0 py-0">
                     <a href="" class="btn btn-primary">Add Slider </a>
                </ol>
            </div>
        </div>

        <!-- Datatables  -->
        <div class="row">
            <div class="col-12">
                <div class="card">
 
                    <div class="card-body">
                        <table id="datatable" class="table table-bordered dt-responsive table-responsive nowrap">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                            </tr>
                            </thead>
                            <tbody>
                            	
                                <tr>
                                    <td>John Smith</td>
                                    <td>Project Manager</td>
                                    <td>Los Angeles</td>
                                    <td>35</td>
                                    <td>2023-08-10</td>
                                    <td>$110,000</td>
                                </tr>
                                
                               
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>




    </div> <!-- container-fluid -->

</div> <!-- content -->







@endsection
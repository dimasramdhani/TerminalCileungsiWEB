@extends('base')
@section('content')
    <!-- Main Section -->
    <section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
            <!-- Remove This Before You Start -->
            <h1>KEBERANGKATAN DARI TERMINAL CILEUNGSI</h1>
            @if(Session::has('alert-success'))
                <div class="alert alert-success">
                    <strong>{{ \Illuminate\Support\Facades\Session::get('alert-success') }}</strong>
                </div>
            @endif
            <hr>
            <table class="table table-bordered">
                <thead>
                <tr>
                     <th>NO.</th>
                    <th>TUJUAN</th>
                    <th>KEBERANGKATAN</th>
                    
                    <th>PERUSAHAAN BIS</th>
                    <th>TARIF</th>
                    <th>NOMOR KENDARAAN</th>
                    
                </tr>
                </thead>
                <tbody>
                @php $no = 1; @endphp
                @foreach($data as $datas)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $datas->nama }}</td>
                        <td>{{ $datas->email }}</td>
                        
                        <td>{{ $datas->alamat }}</td>
                      <td>{{ $datas->tarif }}</td>
                      <td>{{ $datas->kuota }}</td>
                      
                    </tr>
                @endforeach
                </tbody>
            </table>



        </div>
        <!-- /.content -->
    </section>
    <!-- /.main-section -->
@endsection
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
                    <th> AKSI </th>
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
                       <td>
                      <form action="{{ route('kontak.destroy', $datas->id) }}" method="post">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}
                                <a href="{{ route('kontak.edit',$datas->id) }}" class=" btn btn-sm btn-primary">Edit</a>
                                <button class="btn btn-sm btn-danger" type="submit" onclick="return confirm('Yakin ingin menghapus data?')">Delete</button>
                            </form>
                        </td> 
                    </tr>
                @endforeach
                </tbody>
            </table>



        </div>
        <!-- /.content -->
    </section>
    <!-- /.main-section -->
@endsection
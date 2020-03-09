@extends('base')
@section('content')
    <!-- Main Section -->
    <section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
            <!-- Remove This Before You Start -->
            <h1>Edit Data Keberangkatan</h1>
            <hr>
            @foreach($data as $datas)
            <form action="{{ route('kontak.update', $datas->id) }}" method="post">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
                <div class="form-group">
                    <label for="nama">TUJUAN:</label>
                    <input type="text" class="form-control" id="usr" name="nama" value="{{ $datas->nama }}">
                </div>
                <div class="form-group">
                    <label for="email">KEBERANGKATAN:</label>
                    <input type="text" class="form-control" id="email" name="email" value="{{ $datas->email }}">
                </div>
               
                <div class="form-group">
                    <label for="alamat">PERUSAHAAN BIS:</label>
                    <textarea class="form-control" id="alamat" name="alamat">{{ $datas->alamat }}</textarea>
                </div>

                 <div class="form-group">
                    <label for="tarif">TARIF:</label>
                    <textarea class="form-control" id="tarif" name="tarif">{{ $datas->tarif }}</textarea>
                </div>

                 <div class="form-group">
                    <label for="kuota">NOMOR KENDARAAN:</label>
                    <textarea class="form-control" id="kuota" name="kuota">{{ $datas->kuota }}</textarea>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-md btn-primary">Submit</button>
                    <button type="reset" class="btn btn-md btn-danger">Cancel</button>
                </div>
            </form>
            @endforeach
        </div>
        <!-- /.content -->
    </section>
    <!-- /.main-section -->
@endsection
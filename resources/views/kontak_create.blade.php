@extends('baseuser')
@section('content')
    <!-- Main Section -->
    <section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
            <!-- Remove This Before You Start -->
            <h1>MASUKAN JADWAL KEBERANGKATAN</h1>
            <hr>
            <form action="{{ route('kontak.store') }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="nama">TERMINAL TUJUAN:</label>
                    <input type="text" class="form-control" id="usr" name="nama">
                </div>
                <div class="form-group">
                    <label for="email">WAKTU BERANGKAT:</label>
                    <input type="text" class="form-control" id="email" name="email">
                </div>
              
                <div class="form-group">
                    <label for="alamat">PERUSAHAAN BIS:</label>
                    <textarea class="form-control" id="alamat" name="alamat"></textarea>
                </div>
                <div class="form-group">
                    <label for="alamat">TARIF:</label>
                    <textarea class="form-control" id="tarif" name="tarif"></textarea>
                </div>
                <div class="form-group">
                    <label for="alamat">NOMOR KENDARAAN</label>
                    <textarea class="form-control" id="kuota" name="kuota"></textarea>
                </div>
               
                <div class="form-group">
                    <button type="submit" class="btn btn-md btn-primary">Submit</button>
                    <button type="reset" class="btn btn-md btn-danger">Cancel</button>
                </div>
            </form>
        </div>
        <!-- /.content -->
    </section>
    <!-- /.main-section -->
@endsection
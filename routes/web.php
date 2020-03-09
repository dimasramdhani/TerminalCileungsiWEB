<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::resource('kontak','Kontak'); 
Route::resource('databis','Databis');

//route CRUD

Route::get('/jadwal','JadwalController@index');
Route::get('/','JadwalController@service');

Route::get('/', function () {
   // return view('pages.landing-pages');
    return view('index');
});

Route::get('/create', function () {
   // return view('pages.landing-pages');
    return view('kontak_create');
});

Route::get('/', function () {
   // return view('pages.landing-pages');
    return view('index');
});

Route::get('/dashboard', function () {
   // return view('pages.landing-pages');
    return view('dashboard');
});


Route::get('/kegiatan', function () {
   // return view('pages.landing-pages');
    return view('kegiatan/index ');
});

Route::get('/galeri', function () {
   // return view('pages.landing-pages');
    return view('galeri/index ');
});

Route::get('/mgi', function () {
   // return view('pages.landing-pages');
    return view('mgi/index');
});

Route::get('/murnijaya', function () {
   // return view('pages.landing-pages');
    return view('murnijaya/index');
});

Route::get('/handoyo', function () {
   // return view('pages.landing-pages');
    return view('handoyo/index');
});

Route::get('/pahalakencana', function () {
   // return view('pages.landing-pages');
    return view('pahalakencana/index');
});

Route::get('/budiman', function () {
   // return view('pages.landing-pages');
    return view('budiman/index');
});

Route::get('/gunungharta', function () {
   // return view('pages.landing-pages');
    return view('gunungharta/index');
});

Route::get('/haryanto', function () {
   // return view('pages.landing-pages');
    return view('haryanto/index');
});

Route::get('/prayogo', function () {
   // return view('pages.landing-pages');
    return view('prayogo/index');
});

Route::get('/zentrum', function () {
   // return view('pages.landing-pages');
    return view('zentrum/index');
});

Route::get('/sinarjaya', function () {
   // return view('pages.landing-pages');
    return view('sinarjaya/index');
});

Route::get('/harapanjaya', function () {
   // return view('pages.landing-pages');
    return view('harapanjaya/index');
});

Route::get('/agramas', function () {
   // return view('pages.landing-pages');
    return view('agramas/index');
});

Route::get('/gajahm', function () {
   // return view('pages.landing-pages');
    return view('gajahmungkur/index');
});

Route::get('/lajuprima', function () {
   // return view('pages.landing-pages');
    return view('lajuprima/index');
});

Route::get('/putramulya', function () {
   // return view('pages.landing-pages');
    return view('putramulya/index');
});

Route::get('/sindoro', function () {
   // return view('pages.landing-pages');
    return view('sindoro/index');
});

Route::get('/shantika', function () {
   // return view('pages.landing-pages');
    return view('shantika/index');
});

Route::get('/medalimas', function () {
   // return view('pages.landing-pages');
    return view('medalimas/index');
});

Route::get('/profil', function () {
   // return view('pages.landing-pages');
    return view('profil/index');
});

Route::get('/bis', function () {
   // return view('pages.landing-pages');
    return view('bis/index');
});

Route::get('/armada', function () {
   // return view('pages.landing-pages');
    return view('armada/index');
});

/* contoh nambahin route baru
Route::get('/kalkulator', function () {
   // return view('pages.landing-pages');
    return view('kalkulator/kalkulator');
}); */


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');



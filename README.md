### Msy Aulya Salsabila Putri
### PBP D - 2406353364
---

## **Tugas 7**

### 1.Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree pada flutter merupakan representasi logika dari widget UI. Widget tree dicompute pada saat layout dan digunakan pada saat rendering. Pada widget tree, ada yang dinamakan parent widget dan child widget. Parent widget merupakan widget yang membungkus atau mengatur child widgetnya sementara child widget merupakan widget yang berada di dalam parent dan mengikuti aturan dari parent widgetnya. 

### 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
1. MaterialApp: widget root aplikasi yang mengatur tema, title, dan navigasi berbasis material design
2. ThemeData: mengatur warna dan tema keseluruhan aplikasi
3. ColorScheme: mendefinisikan warna dari tema aplikasi
4. MyHomePage: halaman utama aplikasi (home screen) yang menampilkan informasi dan menu tombol
5. Scaffold: menyediakan struktur dasar halaman dengan AppBar, body, dan SnackBar
6. AppBar: menampilkan bar di bagian atas aplikasi dengan judul “Garuda Eleven”
7. Padding: memberikan jarak (spasi) di sekitar elemen dalam tampilan
8. Column: menyusun widget secara vertikal (dari atas ke bawah)
9. Row: menyusun widget secara horizontal (dari kiri ke kanan)
10. InfoCard: widget custom untuk NPM, nama, dan kelas
11. Card: menampilkan konten dengan efek elevasi (kotak dengan bayangan)
12. Container: membungkus widget lain dengan ukuran, padding, dan dekorasi tertentu
13. Text: menampilkan teks
14. SizedBox: memberikan spasi antar widget
15. Center: memusatkan posisi widget di dalam parent (center)
16. GridView.count: menampilkan daftar item dalam bentuk grid
17. ItemHomepage: kelas model data yang menyimpan nama, ikon, dan warna tiap tombol
18. ItemCard: widget custom yang menampilkan satu item menu
19. Material: memberi efek Material Design (warna, bayangan, bentuk)
20. InkWell: emberi efek sentuhan (ripple effect) dan aksi saat item ditekan
21. Icon: menampilkan ikon di dalam tombol
22. SnackBar: muncul di bawah layar saat tombol ditekan, menampilkan pesan singkat
23. ScaffoldMessenger: mengatur tampilan dan pengelolaan SnackBar di halaman saat ini
24. EdgeInsets: mengatur jarak (padding dan margin) dalam layout
25. MediaQuery: digunakan dalam InfoCard untuk menyesuaikan ukuran card dengan lebar layar

### 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
MaterialApp menjadi widget utama yang menginisasi aplikasi Flutter yang berbasis material design. Fungsi dari widget ini yaitu untuk menentukan tema aplikasi, mengatur navigasi untuk berpindah antar halaman, dan menyediakan struktur dasar untuk komponen material (AppBar, FloatingActionButton, dll). Widget ini sering digunakan sebagai widget root karena semua widget material memerlukan konteks dari MaterialApp untuk bisa berfungsi dengan benar.

### 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
Stateless widget bersifat immutable dan dirender setelah ada perubahan pada input data. Widget ini tidak memiliki state, sehingga tidak berubah jika terjadi internal action. Widget ini bisa berubah akibat external event di parent widget. Kebalikan dari itu, stateful widget dirender ketika input data atau ada perubahan state. Widget ini juga bersifat immutable, namun memiliki company state class yang merepresentasikan state saat widget saat ini.

Stateless widget digunakan pada widget yang tampilannya tidak perlu berubah, misalnya menampilkan foto yang sama terus menerus. Sedangkan stateful widget digunakan jika tampilan perlu diperbarui setiap ada event, misalnya tampilan ketika mengisi form.

### 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext merupakan class yang mengurus lokasi sebuah widget di widget tree. Melalui class ini, dapat dilakukan pengaksesan parent widget, pengambilan data dari InheritedWidget, dan mengatur navigasi antar layar. Beberapa fungsi static juga mengambil build context sehingga bisa memanggil widget atau mengambil data dari context yang spesifik. Peran yang besar ini membuat BuildContext sangat penting di Flutter. Penggunaannya pada metode build adalah untuk mengakses informasi/widget lain yang merupakan ancestor dari suatu widget di dalam widget tree.

### 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload memuat perubahan ke VM dan membangun ulang widget tree tanpa merubah state, yaitu dengan memperbarui bagian kecil yang berubah saja. Sementara itu, hot restart memuat perubahan ke VM, memuat ulang seluruh aplikasi, dan menghapus semua state. Karena inilah menjalankan hot reload lebih cepat daripada hot restart.

### 7. Jelaskan bagaimana kamu menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter.
Navigator bekerja seperti stack. Untuk berpindah ke halaman lain, dapat digunakan Navigator.push() dan memberikan rute baru menggunakan MaterialPageRoute yang berisi widget halaman tujuan. Misalnya, ketika tombol “All Products” ditekan, bisa dibuat Navigator.push(context, MaterialPageRoute(builder: (context) => AllProductsPage())) untuk membuka halaman baru bernama AllProductsPage.

Sebaliknya, Navigator.pop(context) dipanggil untuk kembali ke halaman sebelumnya. Dengan cara ini, setiap halaman baru akan ditambahkan di atas halaman sebelumnya, dan pengguna dapat menekan tombol “back” untuk kembali. Mekanisme ini membuat navigasi di Flutter fleksibel dan mudah diterapkan di dalam fungsi onTap atau onPressed pada tombol mana pun di aplikasi.

## **Tugas 8**

### 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Pada Navigator, method push() menambahkan route ke dalam stack route yang dikelola navigator. Route yang ditambahkan ini akan berada di bagian paling atas stack sehingga route ditampilkan pada pengguna. Method pushReplacement() menghapus route yang sedang ditampilkan dan menggantinya dengan suatu route sehingga aplikasi berpindah route. Berbeda dengan push(), method ini mengganti route paling atas pada stack route dengan route baru tanpa mengubah elemen stack lain di bawahnya.

Pada kode yang dibuat, method push() digunakan saat berpindah dari tampilan Home ke Create Product Form, sehingga halaman utama masih ada di stack dan bisa diakses dengan pop() setelah membuka form pembuatan produk. Method pushReplacement() digunakan saat berpindah dari Create Product Form ke Home karena user tidak perlu kembali ke stack sebelumnya untuk mengakses product form. Halaman product form bisa langsung diakses dengan klik tombol yang ada pada Home sehingga tidak memerlukan stack berupa form sebelumnya.

### 2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Hierarchy widget dimanfaatkan agar tampilan aplikasi konsisten sehingga mudah digunakan dan dikembangkan. Scaffold berperan sebagai kerangka utama yang membungkus AppBar, Drawer, Body, dan lainnya. AppBar kemudian berisi judul dan menjaga tampilan agar konsisten, misalnya pada tugas adalah AppBar berwarna blueGrey. Drawer digunakan sebagai navitagor untuk berpindah dari Home, Create Product, dan View Product.

### 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
Layout Padding digunakan untuk memberikan jarak antar elemen sehingga lebih mudah dibaca. Pada tugas, padding digunakan untuk input form sehingga form lebih mudah dibaca dan diisi. SingleChildScrollView digunakan agar halaman bisa discroll ke bawah sehingga lebih nyaman dilihat. Contoh penggunaannya juga pada form create product sehingga form bisa discroll. Terakhir, ListView digunakan untuk menampilkan elemen yang banyak secara vertikal. Widget ini berfungsi untuk memberikan tampilan yang lebih rapi dan enak dilihat.

### 4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Warna tema diatur pada file main.dart dimana primary swatch digunakan untuk AppBar, tombol, dan ikon utama dan secondary digunakan pada background drawer atau highlight. Pada tugas ini, saya menggunakan warna blueGrey sebagai warna tema sehingga nantinya semua halaman bisa otomatis mengikuti warna ini tanpa setting manual.

## **Tugas 9**

### 1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
Model dart diperlukan untuk memastikan kode Flutter aman, memudahkan maintenance, dan agar bisa melakukan verifikasi data yang diterima dari server. Model dart ini berfungsi sebagai kontrak data yang memberikan validasi tipe yang kuat. Dengan model ini, data bisa dicek (misalnya hanya ingin bertipe int) kesesuaiannya. Dart juga bisa menandai properti yang harus diisi dan yang tidak harus sehingga bersifat null-safety. Kemudian, model dart juga sangat meningkatkan maintainability karena perubahan backend hanya diperlukan pada class model sehingga memudahkan developer untuk melihat bagian-bagian yang ingin diperbaiki/diubah.

Jika menggunakan Map<String, dynamic>, aplikasi bisa kehilangan jaminan tipe dan typo pada key atau tipe data hanya bisa dideteksi saat Runtime sehingga bisa menyebabkan crash yang sulit dilocate.

### 2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
Package http merupakan package dasar yang menyediakan http.get(), http.post(), http.put(), dll yang digunakan dalam komunikasi network. CookieRequest merupakan class wrapper yang dibuat menggunakan package http dan bertujuan mengelola state (cookie) sesuai request. Perbedaannya, http merupakan alat sementara CookieRequest merupakan solusi yang dibangun di atas http untuk menangani autentikasi berbasis cookie.

### 3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berisi state (cookie) yang diperlukan oleh semua komponen aplikasi Flutter. Pada halaman login, instance CookieRequest yang dibagikan digunakan sebelum kemudian memanggil login() dan menyimpan sessionid. sessionid ini membuat server bisa mengenali pengguna yang login sehingga bisa menampilkan output yang sesuai. Jika tidak dibagikan, halaman login dan halaman home (misalnya) masing-masing akan membuat instance baru sehingga ketika ingin mengambil data, server melihat requestnya tidak memiliki cookie dan menganggap pengguna adalah AnonymousUser. Dengan begitu, server menolak akses ke data dan pengguna tidak mendapatkan output yang diinginkan.

### 4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
Konfigurasi yang dilakukan adalah untuk mengatur izin agar Flutter sebagai client bisa mendapatkan data dari Django (server). ALLOWED_HOSTS merupakan daftar host pada Django yang diperbolehkan untuk memberi request sehingga 10.0.2.2 agar request dari android emulator tidak ditolak. Selain itu, pengaktifan CORS (Cross-Origin Resource Sharing) dengan django-cors-headers bertujuan agar browser bisa mengambil data dari domain yang berbeda. Lalu, pengaturan Samesite=None memastikan cookie (seperti sessionid untuk login) tetap terkirim. Hal ini bertujuan untuk memastikan autentikasi pengguna dengan benar. Tanpa pengaturan CORS dan ALLOWED_HOST yang benar, request bisa ditolak saat seharusnya request tersebut diterima. Kemudian, jika Samesite salah, maka autentikasi gagal dan user bisa saja dianggap anonim sehingga tidak bisa membuka tampilan yang seharusnya bisa diakses.

Pada Flutter, izin akses internet adalah cara aplikasi meminta izin pada OS Android untuk mengakses jaringan. Tanpanya, OS Android akan memblokir semua percobaan koneksi aplikasi secara paksa dan bisa memicu weeoe di aplikasi Flutetr meskipun koneksi internet aktif.

### 5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme pengiriman data dari input di Flutter hingga ditampilkan melibatkan siklus Request-Response client-server. Proses dimulai ketika pengguna memasukkan data dan menekan tombol di Flutter. Data diubah menjadi format JSON dan dikirim melalui HTTP POST sebagai request ke endpoint spesifik di server Django.

Di server, Django menerima request, melakukan validasi data, dan menggunakan ORM untuk menyimpan informasi tersebut ke Database. Setelah sukses, Django mengirimkan JSON Response kembali ke Flutter. Setelah menerima konfirmasi sukses, Flutter akan request HTTP GET untuk mengambil seluruh data yang diperbarui dari server. Data ini digunakan untuk memperbarui state aplikasi. Dengan memperbarui state, widget UI otomatis membangun ulang dan menampilkan data yang baru diinput.

### 6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Data input saat login atau register dikirim ke endpoint Django melalui HTTP POST Request. Django mengecek dan memproses data ini jika valid (membuat user atau verifikasi). Kemudian, Django akan membuat session dan mengirim sessionid di dalam cookie ke Flutter. Flutter melalui pbp_django_auth menyimpan cookie secara lokal dan untuk setiap proses, cookie disertakan sehingga Django bisa terus mengidentifikasi user yang sedang login.

Untuk logout, Flutter mengirimkan request endpoint logout ke Django. Django kemudian merespon dengan menghapus session dan memberi instruksi agar Flutter bisa menghapus cookie yang disimpan secara lokal. Setelah cookie ini dihapus, navigasi kembali ke halaman login dengan .pushReplacement().

### 7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Memperbaiki kode pada proyek django (sebelumnya ada error).
2. Membuat app baru pada proyek django (authentication), membuat file-filenya (termasuk membuat fungsi login), dan mengintegrasikan Django ke emulator android.
3. Menginstall package yang dibutuhkan.
4. Memodifikasi kode flutter untuk menyediakan CookieRequest (main.dart).
5. Membuat login.dart dan mengatur agar pengguna yang membuka web harus login terlebih dahulu.
6. Membuat fungsi register pada django dan menambahkan pathnya.
7. Membuat register.dart dan menghubungkannya dengan file login.dart (membuat flow agar user baru bisa register sebelum login).
8. Membuat model dengan data dari endpoint JSON proyek django.
9. Menambahkan package http dan memperbolehkan akses internet pada flutter.
10. Menambahkan endpoint proxy untuk mengatasi masalah CORS pada gambar (agar flutter bisa mengakses gambar).
11. Membuat products_entry_card.dart dan products_entry_list.dart untuk handling card product dan menampilkan produk.
12. Membuat navigasi ke tombol menampilkan produk apabila ditekan "All Products".
13. Menambahkan fungsi pada views.py untuk add product pada flutter.
14. Menyesuaikan warna pada aplikasi flutter.
15. Menghubungkan form flutter dengan CookieRequest sehingga produk bisa ditambahkan dari flutter.
16. Mengimplementasikan logout pada flutter dengan menghubungkan CookieRequest dan menambahkan kode agar ketika menekan card "Logout", pengguna bisa logout.
17. Menambahkan tombol Logout pada home page dan mengganti Column ke ListView agar tampilan bisa discroll dan tidak terjadi overflow.
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
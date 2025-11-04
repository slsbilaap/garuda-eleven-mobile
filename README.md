### Msy Aulya Salsabila Putri
### PBP D - 2406353364
---

## **Tugas 7**

# 1.Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
Widget tree pada flutter merupakan representasi logika dari widget UI. Widget tree dicompute pada saat layout dan digunakan pada saat rendering. Pada widget tree, ada yang dinamakan parent widget dan child widget. Parent widget merupakan widget yang membungkus atau mengatur child widgetnya sementara child widget merupakan widget yang berada di dalam parent dan mengikuti aturan dari parent widgetnya. 

# 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.


# 3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
MaterialApp menjadi widget utama yang menginisasi aplikasi Flutter yang berbasis material design. Fungsi dari widget ini yaitu untuk menentukan tema aplikasi, mengatur navigasi untuk berpindah antar halaman, dan menyediakan struktur dasar untuk komponen material (AppBar, FloatingActionButton, dll). Widget ini sering digunakan sebagai widget root karena semua widget material memerlukan konteks dari MaterialApp untuk bisa berfungsi dengan benar.

# 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
Stateless widget bersifat immutable dan dirender setelah ada perubahan pada input data. Widget ini tidak memiliki state, sehingga tidak berubah jika terjadi internal action. Widget ini bisa berubah akibat external event di parent widget. Kebalikan dari itu, stateful widget dirender ketika input data atau ada perubahan state. Widget ini juga bersifat immutable, namun memiliki company state class yang merepresentasikan state saat widget saat ini.

Stateless widget digunakan pada widget yang tampilannya tidak perlu berubah, misalnya menampilkan foto yang sama terus menerus. Sedangkan stateful widget digunakan jika tampilan perlu diperbarui setiap ada event, misalnya tampilan ketika mengisi form.

# 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext merupakan class yang mengurus lokasi sebuah widget di widget tree. Melalui class ini, dapat dilakukan pengaksesan parent widget, pengambilan data dari InheritedWidget, dan mengatur navigasi antar layar. Beberapa fungsi static juga mengambil build context sehingga bisa memanggil widget atau mengambil data dari context yang spesifik. Peran yang besar ini membuat BuildContext sangat penting di Flutter. Penggunaannya pada metode build adalah untuk mengakses informasi/widget lain yang merupakan ancestor dari suatu widget di dalam widget tree.

# 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
Hot reload memuat perubahan ke VM dan membangun ulang widget tree tanpa merubah state, yaitu dengan memperbarui bagian kecil yang berubah saja. Sementara itu, hot restart memuat perubahan ke VM, memuat ulang seluruh aplikasi, dan menghapus semua state. Karena inilah menjalankan hot reload lebih cepat daripada hot restart.

# 7. Jelaskan bagaimana kamu menambahkan navigasi untuk berpindah antar layar di aplikasi Flutter.


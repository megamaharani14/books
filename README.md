Praktikum 1: Mengunduh data dari Web Service (API)
![Screnshoot books](image/image.png)
Soal 1 
Tambahkan nama panggilan pada title app 
Soal 2
![Screnshoot books](image/image1.png)

Soal 3
Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
jawab: Substring berfungsi memotong string value.body untuk mengambil 450 karakter dengan tujuan untuk menampilkan data api secara ringkas. Sedangkan catchError berfungsi untuk menangani error saat metode getData dijalankan, dan tujuannya untuk mengubah result menjadi pesan error atau memberi tahu pengguna jika ada masalah dalam pengambilan data.

Hasil praktikum:
![Screnshoot books](image/image2.png)

Praktikum 2: Menggunakan await/async untuk menghindari callbacks
Soal 4 
Jelaskan maksud kode langkah 1 dan 2 tersebut!
jawab: pada langkah 1 yaitu menambahkan tiga method yang berfungsi untuk mengembalikan nilai 1,2,dan 3 menunggu selama 3 detik menggunakan future.delayed dan sifat asynchronous ini tidak langsung mengembalikan hasil karena ada jeda waktu.
Langkah 2 yaitu menambahkan method count() dengan menggunakan ketiga fungsi asynchronous pada langkah 1 untuk menghitung total nilai secara berurutan. Ketika fungsi dijalankan berurutan, maka waktu totalnya adalah 9 detik dan nanti akan menampilkan hasil angka 6

Hasil praktikum:
![Screnshoot books](image/image3.png)

Praktikum 3: Menggunakan Completer di Future
Soal 5: 
Jelaskan maksud kode langkah 2 tersebut!
jawab: Pada langkah 2 yaitu menambahkan variabel late dan method di class _FuturePageState. Kode tersebut menjalankan proses asynchronous manual menggunakan completer yang dapat memulai dan menyelesaikan future secara terkontrol, dan hasil dari fungsi getNumber akan berupa future yang selesai setelah 5 detik dengan menampilkan nilai 42.
Hasil praktikum:
![Screnshoot books](image/image4.png)

Soal 6:
Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
jawab: perbedannya antara lain penanganan kesalahan dengan menggunakan try-catch untuk menangani error, sedikit lebih kompleks, dan aman terhadap error yang tidak diduga.
![Screnshoot books](image/image5.png)

Praktikum 4: Memanggil Future secara paralel
Soal 7:
Hasil praktikum:
Dalam 3 detik akan menampilkan angka 6 lebih cepat dibandingkan dengan praktikum sebelumnya yang menunggu sampai 9 detik
![Screnshoot books](image/image6.png)

Soal 8:
Jelaskan maksud perbedaan kode langkah 1 dan 4!
jawab:

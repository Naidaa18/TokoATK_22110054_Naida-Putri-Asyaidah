**📦 Java 10 - Aplikasi Web Manajemen Barang & Penjualan**
Proyek ini merupakan aplikasi berbasis Java JSP yang menyediakan sistem manajemen data barang dan statistik penjualan. Dibuat untuk latihan pengembangan aplikasi web dinamis dengan koneksi ke database.

**🔧 Fitur Utama**
1. CRUD Data Barang:
- Tambah, ubah, hapus, dan tampilkan data barang
2. Statistik Penjualan:
- Menampilkan total penjualan
- Statistik barang berdasarkan data yang tersedia
3. Beberapa endpoint API berbasis JSP

**📁 Struktur Folder**
├── build.xml
├── build/
│   └── web/
│       ├── baranglist.jsp
│       ├── barangedit.jsp
│       ├── barangtambah.jsp
│       ├── api.baranggantinama.jsp
│       ├── api.salestotal.jsp
│       └── ...
└── src/
    └── [kode Java dan koneksi database]
    
**⚙️ Teknologi Digunakan**
1. Java (JSP & Servlet)
2. JDBC
3. HTML & CSS (basic)
4. Apache Tomcat
5. MySQL

**🚀 Cara Menjalankan**
1. Buka proyek ini di NetBeans atau IDE Java lainnya.
2. Buat database dan tabel sesuai struktur data barang dan penjualan.

Periksa konfigurasi database di file koneksi (DatabaseConnection.java atau sejenis).

Jalankan server Tomcat dan buka aplikasi via browser.

🔒 Catatan
Beberapa halaman menggunakan format API JSP (contoh: api.barangstat.jsp) untuk menampilkan data JSON/statistik.

Proyek ini cocok sebagai contoh mini sistem inventori berbasis web.

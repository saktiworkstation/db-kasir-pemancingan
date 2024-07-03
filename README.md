# Sistem Basis Data Manajemen Pemancingan

Repositori ini berisi skrip SQL dan penjelasan untuk membuat dan mengelola basis data Sistem Manajemen Pemancingan. Basis data ini mencakup tabel untuk pelanggan, karyawan, spot pemancingan, peralatan, penjualan, detail penjualan, pemesanan, dan pembayaran.

## Struktur Basis Data

### Tabel

1. **Customers**
   - Menyimpan informasi tentang pelanggan.
   - Kolom: `CustomerID`, `Name`, `Phone`, `Email`, `Address`

2. **Employees**
   - Menyimpan informasi tentang karyawan.
   - Kolom: `EmployeeID`, `Name`, `Position`, `HireDate`, `Salary`

3. **FishingSpots**
   - Menyimpan informasi tentang spot pemancingan.
   - Kolom: `SpotID`, `Name`, `Location`, `PricePerHour`

4. **Equipment**
   - Menyimpan informasi tentang peralatan pemancingan yang tersedia untuk disewa.
   - Kolom: `EquipmentID`, `Name`, `Type`, `Price`, `Quantity`

5. **Sales**
   - Menyimpan informasi tentang transaksi penjualan.
   - Kolom: `SaleID`, `CustomerID`, `EmployeeID`, `SaleDate`, `TotalAmount`

6. **SaleDetails**
   - Menyimpan informasi detail tentang setiap penjualan.
   - Kolom: `SaleDetailID`, `SaleID`, `EquipmentID`, `Quantity`, `Price`

7. **Bookings**
   - Menyimpan informasi tentang pemesanan spot pemancingan.
   - Kolom: `BookingID`, `CustomerID`, `SpotID`, `BookingDate`, `StartTime`, `EndTime`, `TotalPrice`

8. **Payments**
   - Menyimpan informasi tentang pembayaran yang dilakukan untuk penjualan.
   - Kolom: `PaymentID`, `SaleID`, `PaymentDate`, `Amount`, `PaymentMethod`

### Fungsi

- **GetTotalSales**
  - Mengembalikan jumlah total dari semua penjualan.

- **GetEquipmentPrice**
  - Mengembalikan harga untuk peralatan tertentu dan jumlahnya.

### Prosedur

- **GetAllCustomers**
  - Mengambil semua pelanggan.

- **GetBookingDetails**
  - Mengambil detail pemesanan untuk pelanggan tertentu pada tanggal tertentu.

- **CheckSalary**
  - Memeriksa dan memperbarui gaji karyawan jika di bawah jumlah tertentu.

### Pemicu (Trigger)

- **BeforeCustomerInsert**
  - Mencatat tindakan sebelum pelanggan dimasukkan.

- **BeforeCustomerUpdate**
  - Mencatat tindakan sebelum pelanggan diperbarui.

- **BeforeCustomerDelete**
  - Mencatat tindakan sebelum pelanggan dihapus.

- **AfterCustomerInsert**
  - Mencatat tindakan setelah pelanggan dimasukkan.

- **AfterCustomerUpdate**
  - Mencatat tindakan setelah pelanggan diperbarui.

- **AfterCustomerDelete**
  - Mencatat tindakan setelah pelanggan dihapus.

### Indeks

- **Primary Key Index**
  - Dibuat pada `NewTable`.

- **Composite Index on Sales**
  - Dibuat pada tabel `Sales` untuk `CustomerID` dan `EmployeeID`.

- **Composite Index on Equipment**
  - Dibuat pada tabel `Equipment` untuk `Name` dan `Type`.

### Tampilan (View)

- **HorizontalView**
  - Memilih kolom tertentu dari tabel `Customers`.

- **VerticalView**
  - Memilih baris tertentu dari tabel `Customers`.

- **InnerView**
  - Memilih baris dari tabel `Customers` berdasarkan tampilan lain dengan `WITH CHECK OPTION`.

### Keamanan Basis Data

- **Pengguna**
  - `user1`, `user2`, `user3` dengan kata sandi masing-masing.

- **Peran**
  - `finance`, `human_dev`, `warehouse`.

- **Hak Istimewa**
  - Diberikan berbagai hak akses kepada pengguna dan peran untuk mengakses tabel, tampilan, dan prosedur.

## Penyisipan Data Contoh

Skrip ini mencakup perintah untuk menyisipkan data contoh ke dalam setiap tabel, memastikan basis data terisi untuk keperluan pengujian dan pengembangan.

## Penggunaan

Untuk mengatur dan menggunakan basis data ini, ikuti langkah-langkah berikut:

1. Eksekusi skrip SQL yang disediakan di MySQL Workbench Anda.
2. Pastikan semua tabel, fungsi, prosedur, pemicu, indeks, tampilan, dan pengaturan keamanan berhasil dibuat.
3. Masukkan data contoh yang disediakan dalam skrip.
4. Uji fungsi, prosedur, dan pemicu untuk memastikan mereka bekerja sesuai yang diharapkan.
5. Gunakan tampilan untuk menyederhanakan pengambilan dan manipulasi data.
6. Kelola akses pengguna dan hak istimewa menggunakan pengaturan keamanan.

## Lisensi

Proyek ini dilisensikan di bawah Lisensi MIT.

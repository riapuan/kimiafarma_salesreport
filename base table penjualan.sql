select
	concat(id_invoice, '_', id_barang) id_penjualan,
   skg.penjualan.id_invoice,
   skg.penjualan.tanggal,
   skg.penjualan.id_barang,
   skg.barang.nama_barang,
   skg.penjualan.harga,
   skg.penjualan.unit,
   skg.penjualan.jumlah_barang,
   (jumlah_barang * skg.penjualan.harga) as total_harga_per_barang,
   skg.penjualan.mata_uang,
   skg.barang.kode_barang,
   skg.barang.lini,
   skg.penjualan.id_customer,
   skg.pelanggan.nama as nama_customer,
   skg.pelanggan.cabang_sales,
   skg.penjualan.id_distributor,
   skg.pelanggan.grup as grup_category
from skg.penjualan
left join skg.barang
on (skg.penjualan.id_barang = skg.barang.kode_barang)
left join skg.pelanggan
on (skg.penjualan.id_customer = skg.pelanggan.id_customer)
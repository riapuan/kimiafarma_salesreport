select
	id_invoice, tanggal,
    id_customer, nama_customer, cabang_sales,
    id_distributor, grup_category,
    count(distinct id_barang) total_barang, SUM(total_harga_per_barang) total_pembelian
from baru.`base table penjualan`
group by 1,2,3,4,5,6,7
order by 1
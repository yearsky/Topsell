@extends('email.template')

@section('title')
 INVOICE PEMBELIAN PRODUK - {{ucwords($config->name)}}
@endsection

@section('description')
	Terima Kasih Telah Membeli Produk Kami !
@endsection

@section('header')
	Detail Invoice Pembelian / Pemesanan Produk Anda
@endsection

@section('content')
	<tr mc:hideable>
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#2B2B2B">
			<tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellspacing="0" width="500" class="flexibleContainer">
						<tr>
							<td valign="top" width="500" class="flexibleContainerCell"  style="padding:8px 30px 8px 30px;">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" width="210" style="max-width: 100%;">
												<tr>
													<td align="left" class="textContent">
														<h5 mc:edit="header" style="color:#ff82ab;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:14px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
															Tipe Email
														</h5>
														<div mc:edit="body" style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:12px;margin-bottom:0;color:#FFF;line-height:135%;">Invoice Pembelian</div>
													</td>
												</tr>
											</table>
										</td>
										<td align="right" valign="middle" class="flexibleContainerBox">
											<table class="flexibleContainerBoxNext" border="0" cellpadding="0" cellspacing="0" width="210" style="max-width: 100%;">
												<tr>
													<td align="left" class="textContent">
															<h5 mc:edit="header" style="color:#ff82ab;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:14px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
															Tanggal email
														</h5>
														<div mc:edit="body" style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:12px;margin-bottom:0;color:#FFF;line-height:135%;">{{tgl_indo(date('Y-m-d'))}}</div>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								<!-- // CONTENT TABLE -->

							</td>
						</tr>
					</table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>
<tr mc:hideable="">
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-bottom:2px dashed#ddd">
			<tbody><tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="30" cellspacing="0" width="500" class="flexibleContainer">
						<tbody><tr>
							<td valign="top" width="500" class="flexibleContainerCell">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody><tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;">
												<tbody><tr>
													<td align="left" class="textContent">
														<h3 style="color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:8px;text-align:left;">
															{{ucwords(@$transaction->name)}}
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#A5A5A5;line-height:135%;">
															<table cellpadding="3">
																<tbody><tr>
																	<td width="120">Email </td>
																	<td>{{@$transaction->email}}</td>
																</tr>
																<tr>
																	<td width="120">No Telepon</td>
																	<td>{{@$transaction->phone}}</td>
																</tr>
															</tbody></table>
														</div>
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
								<!-- // CONTENT TABLE -->

							</td>
						</tr>
					</tbody></table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</tbody></table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>

<!-- Keranjang -->
<tr mc:hideable="">
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-bottom:2px dashed#ddd">
			<tbody><tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="30" cellspacing="0" width="500" class="flexibleContainer">
						<tbody><tr>
							<td valign="top" width="500" class="flexibleContainerCell">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody><tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
												<tbody><tr>
													<td align="left" class="textContent">
														<h3 style="color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:8px;text-align:left;">
															<span style="color:#EA1E63">Produk</span> 
															<span style="color:#2B2B2B">Yang Di Beli</span>
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#A5A5A5;line-height:135%;">
															<table style="width:100%;border:1px solid#eee; border-collapse: collapse;" cellpadding="10">
																<thead>
																<tr style="background:#2B2B2B;color:#ff82ab">
																	<th width="120">Produk</th>
																	<th>QTY</th>
																	<th>Total</th>
																	<th width="100">Subtotal</th>
																</tr>
																</thead>
																<tbody>
																	@foreach($transaction->detail as $result)
																	<tr style="border:1px solid#ddd">
																		<td>
																		<a href="{{$result->product->url}}" target="_blank">
																			{{read_more($result->name,20)}}
																		</a>
																		<span style="font-size: 10px;">Berat : {{$result->weight}} Gram</span>
																		@if($result->type=="preorder")
																			<span style="font-size: 10px;">Preorder : {{$result->timeout}} hari</span>
																		@endif
																		</td>
																		<td>{{$result->qty}} Unit</td>
																		<td>Rp. {{number_format($result->price,0,',','.')}}</td>
																		<td>Rp. {{number_format($result->price_total,0,',','.')}}</td>
																	</tr>
																	@endforeach																	
																</tbody>
																<tfoot style="background:#424242;color:#fff">
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">Biaya Produk</td>
																		<td>Rp. {{number_format(@$transaction->price)}}</td>
																	</tr>
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">
																			Biaya Pengiriman
																		</td>
																		<td>Rp. 
																			{{number_format($transaction->courier_price,0,',','.')}}
																		</td>
																	</tr>
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">Total</td>
																		<td>Rp. 
																			{{number_format($transaction->price,0,',','.')}}
																		</td>
																	</tr>
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">Potongan Kupon</td>
																		<td>Rp. {{number_format($transaction->coupon_price,0,',','.')}}</td>
																	</tr>
																	<tr style="border:1px solid#555;background:#EA1E63;">
																		<td colspan="3" align="right">Total Pembayaran</td>
																		<td>Rp. 
																			{{number_format($transaction->price_total,0,',','.')}}
																		</td>
																	</tr>
																</tfoot>
															</table>
														</div>
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
								<!-- // CONTENT TABLE -->

							</td>
						</tr>
					</tbody></table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</tbody></table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>
<!-- End Keranjang -->

<!-- Info Pengiriman -->
<tr mc:hideable="">
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-bottom:2px dashed#ddd">
			<tbody><tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="30" cellspacing="0" width="500" class="flexibleContainer">
						<tbody><tr>
							<td valign="top" width="500" class="flexibleContainerCell">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody><tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;">
												<tbody><tr>
													<td align="left" class="textContent">
														<h3 style="color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:8px;text-align:left;">
															<span style="color:#EA1E63">Informasi</span> 
															<span style="color:#2B2B2B">Pengiriman</span>
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#999;line-height:135%;">
															<table cellpadding="3">
																<tbody>
																<tr>
																	<td colspan="2">Dikirm Dari</td>
																</tr>
																<tr>
																	<td colspan="2"></td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Provisi</td>
																	<td>{{$transaction->origin_province}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">
																		Kota
																	</td>
																	<td>{{$transaction->origin_city}}</td>
																</tr>
																<tr>
																	<td colspan="2">&nbsp;</td>
																</tr>
																<tr>
																	<td colspan="2">Dikirm Ke </td>
																</tr>
																<tr>
																	<td colspan="2"></td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Provisi</td>
																	<td>{{$transaction->province}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">
																		Kota
																	</td>
																	<td>{{$transaction->city}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">
																		Kecamatan
																	</td>
																	<td>{{$transaction->district}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Alamat</td>
																	<td>{{$transaction->address}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Kode Pos</td>
																	<td><strong>{{$transaction->postalcode}}</strong></td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Berat Barang</td>
																	<td>{{$transaction->weight}} Gram</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Jasa Kurir</td>
																	<td>{{strtoupper($transaction->courier)}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Paket Pengiriman</td>
																	<td>{{$transaction->courier_service_name}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Biaya Pengiriman</td>
																	<td>Rp. {{number_format($transaction->courier_price,0,',','.')}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Estimasi Pengiriman</td>
																	<td>{{$transaction->courier_estimate}}</td>
																</tr>
															</tbody></table>
														</div>
													</td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
								<!-- // CONTENT TABLE -->

							</td>
						</tr>
					</tbody></table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</tbody></table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>
<!-- ENd Info -->

<!-- Info Akun bank -->
<tr mc:hideable="">
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="30" cellspacing="0" width="500" class="flexibleContainer">
						<tbody><tr>
							<td valign="top" width="500" class="flexibleContainerCell">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody><tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" style="width: 100%;overflow:hidden;">
												<tbody><tr>
													<td align="left" class="textContent">
														<h3 style="color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:8px;text-align:left;">
															<span style="color:#EA1E63">Informasi</span> 
															<span style="color:#2B2B2B">Pembayaran</span>
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#A5A5A5;line-height:135%;">
															<article style="margin-bottom:20px;">
															Silahkan Segera melakukan transfer sesuai dengan total biaya pembelian ke Salah Satu Akun Berikut
															</article>
															<table cellpadding="3" style="width:100%;color:#777;">
																<tbody>
															@foreach($account as $result)
																	<tr>
																		<td>Nama Bank</td>
																		<td>
																			<strong>{{$result->bank_name}}</strong>
																		</td>
																	</tr>
																	<tr>
																		<td>Nama Akun Bank</td>
																		<td>
																			<strong>{{$result->name}}<strong>
																		</td>
																	</tr>
																	<tr>
																		<td>No Rekening Bank</td>
																		<td><strong>
																				{{$result->bank_number}}
																			</strong>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="3">&nbsp;</td>
																	</tr>
															@endforeach
															</tbody>
															</table>
															<div style="margin-top:8px;border-bottom:1px solid#DDD;margin-bottom:8px;"></div>
															<div style="margin-top:20px">
																Setelah Melakukan Pembayaran , 
																Agar Melakukan <a href="{{base_url('main/confirmation')}}">Konfirmasi Pembayaran</a> pada kami agar transaksi dapat di proses untuk selanjutnya
															</div>
														</div>
													</td>
												</tr>
												
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
								<!-- // CONTENT TABLE -->

							</td>
						</tr>
					</tbody></table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</tbody></table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>
<!-- End Info -->

<!-- Invoice -->
<tr mc:hideable="">
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="30" cellspacing="0" width="500" class="flexibleContainer">
						<tbody><tr>
							<td valign="top" width="500" class="flexibleContainerCell">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody><tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" style="width: 100%;overflow:hidden;">
												<tbody><tr>
													<td align="left" class="textContent">
														<h3 style="color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:8px;text-align:left;">
															<span style="color:#EA1E63">Nomor</span> 
															<span style="color:#2B2B2B">Invoice</span>
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:18px;margin-bottom:0;color:#999;line-height:135%;background:#EEE;padding:10px;text-align:center;border:2px dashed#CCC;">
														{{$transaction->invoice}}
														</div>
													</td>
												</tr>
												
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
								<!-- // CONTENT TABLE -->

							</td>
						</tr>
					</tbody></table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</tbody></table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>
<!-- END -->

<tr>
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#F8F8F8">
			<tbody><tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="0" cellspacing="0" width="500" class="flexibleContainer">
						<tbody><tr>
							<td align="center" valign="top" width="500" class="flexibleContainerCell">
								<table border="0" cellpadding="30" cellspacing="0" width="100%">
									<tbody><tr>
										<td align="center" valign="top">

											<!-- CONTENT TABLE // -->
											<table border="0" cellpadding="0" cellspacing="0" width="100%">
												<tbody><tr>
													<td valign="top" class="textContent">
														<h3 mc:edit="header" style="color:#5F5F5F;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
															Terima Kasih !
														</h3>
														<div mc:edit="body" style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;">
															Terima Kasih Telah melakukan pemesanan / pembelin produk kami , anda dapat menggunakan no invoice di atas sebagai <a href="{{base_url('main/confirmation')}}">Konfirmasi Pembayaran</a> jika pembayaran telah di lakukan 
															 <br><br>
															Transaksi Ini Akan Hangus Jika Pembayaran melebihi <br>
															<span style="color: #ff0000">
																{{tgl_indo($transaction->dateend)}} - {{toTime($transaction->dateend)}}
															</span>
														</div>
													</td>
												</tr>
											</tbody></table>
											<!-- // CONTENT TABLE -->

										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
					<!-- // FLEXIBLE CONTAINER -->
				</td>
			</tr>
		</tbody></table>
		<!-- // CENTERING TABLE -->
	</td>
</tr>


@endsection
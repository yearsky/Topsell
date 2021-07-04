@extends('email.template')

@section('title')
TRANSAKSI ANDA TELAH KAMI KONFIRMASI - {{ucwords($config->name)}}
@endsection

@section('description')
	Transaksi Anda Telah Kami Konfirmasi
@endsection

@section('header')
	Transaksi Anda Telah Kami Konfirmasi Berikut Merupakan Detail 
@endsection

@section('content')
	<tr mc:hideable>
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#1187DF">
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
														<h5 mc:edit="header" style="color:#b5deff;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:14px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
															Tipe Email
														</h5>
														<div mc:edit="body" style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:12px;margin-bottom:0;color:#FFF;line-height:135%;">Konfirmasi Transaksi</div>
													</td>
												</tr>
											</table>
										</td>
										<td align="right" valign="middle" class="flexibleContainerBox">
											<table class="flexibleContainerBoxNext" border="0" cellpadding="0" cellspacing="0" width="210" style="max-width: 100%;">
												<tr>
													<td align="left" class="textContent">
															<h5 mc:edit="header" style="color:#b5deff;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:14px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
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
															<span style="color:#1187DF">Produk</span> 
															<span style="color:#2B2B2B">Yang Di Beli</span>
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#A5A5A5;line-height:135%;">
															<table style="width:100%;border:1px solid#eee; border-collapse: collapse;" cellpadding="10">
																<thead>
																<tr style="background:#2B2B2B;color:#b5deff">
																	<th width="120">Produk</th>
																	<th>QTY</th>
																	<th>Total</th>
																	<th width="100">Subtotal</th>
																</tr>
																</thead>
																<tbody>
																	@foreach($transaction->detail as $result)
																	<tr>
																		<td>
																		<a href="{{base_url('main/produk/lihat/'.$result->product->id.'/'.seo($result->product->name))}}" target="_blank">{{read_more($result->product->name,30)}}</a></td>
																		<td>{{$result->qty}} Unit</td>
																		<td>Rp. {{number_format($result->price)}}</td>
																		<td>Rp. {{number_format($result->total)}}</td>
																	</tr>
																	@endforeach																	
																</tbody>
																<tfoot style="background:#424242;color:#fff">
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">Total Harga Barang</td>
																		<td>Rp. {{number_format(@$transaction->price)}}</td>
																	</tr>
																	@if(isset($transaction->coupon->coupon->id))
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">Potongan Kupon</td>
																		<td>Rp. {{number_format($transaction->coupon->coupon->price)}}</td>
																	</tr>
																	@endif
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">
																			Biaya Pengiriman
																		</td>
																		<td>Rp. {{number_format(goExplode($transaction->courierpacket,'-',1))}}</td>
																	</tr>
																	<tr style="border:1px solid#555">
																		<td colspan="3" align="right">Total</td>
																		<td>Rp. {{number_format($transaction->price + goExplode($transaction->courierpacket,'-',1))}}</td>
																	</tr>
																	
																	<tr style="border:1px solid#555;background:#1187DF;">
																		<td colspan="3" align="right">Total Pembayaran Transaksi</td>
																		@if(isset($transaction->coupon->coupon->id))
																			<td>Rp. 
																				{{number_format(($transaction->price + goExplode($transaction->courierpacket,'-',1)) - $transaction->coupon->coupon->price)}}
																			</td>
																		@else
																		<td>Rp. {{number_format($transaction->price + goExplode($transaction->courierpacket,'-',1))}}</td>
																		@endif
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
															<span style="color:#1187DF">Informasi</span> 
															<span style="color:#2B2B2B">Pengiriman</span>
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#999;line-height:135%;">
															<table cellpadding="3">
																<tbody><tr>
																	<td width="150" style="color:#555">Provisi</td>
																	<td>{{goExplode($transaction->province,'-',1)}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">
																		Kota
																	</td>
																	<td>{{goExplode($transaction->city,'-',1)}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">
																		Kecamatan
																	</td>
																	<td>{{goExplode($transaction->district,'-',1)}}</td>
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
																	<td width="150" style="color:#555">Kurir</td>
																	<td>{{strtoupper($transaction->courier)}}</td>
																</tr>
																<tr>
																	<td width="150" style="color:#555">Paket Pengiriman</td>
																	<td>{{goExplode($transaction->courierpacket,'-','0')}} - Rp {{number_format(goExplode($transaction->courierpacket,'-',1))}}</td>
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
															<span style="color:#1187DF">Nomor</span> 
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
															Terima Kasih
														</h3>
														<div mc:edit="body" style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:15px;margin-bottom:0;color:#5F5F5F;line-height:135%;">
															Terima Kasih Telah melakukan pembayaran transaksi pembelian anda , kini transaksi anda sedang kami proses ke pengiriman sesuai barang / produk yang anda beli
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
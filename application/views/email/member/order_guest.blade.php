@extends('email.member.template')

@section('title')
 	Terima Kasih Telah Melakukan Order Produk Ke Pada Kami
@endsection

@section('description')
	Terima Kasih Telah Melakukan Order Produk Ke Pada Kami
@endsection

@section('header')
	Detail Permintaan Pemesanan Produk
@endsection

@section('content')
<tr mc:hideable>
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#5F5F5F">
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
														<h5 mc:edit="header" style="color:#EED24D;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:14px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
															Tipe Email
														</h5>
														<div mc:edit="body" style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:12px;margin-bottom:0;color:#FFF;line-height:135%;">Pemberitahuan</div>
													</td>
												</tr>
											</table>
										</td>
										<td align="right" valign="middle" class="flexibleContainerBox">
											<table class="flexibleContainerBoxNext" border="0" cellpadding="0" cellspacing="0" width="210" style="max-width: 100%;">
												<tr>
													<td align="left" class="textContent">
															<h5 mc:edit="header" style="color:#EED24D;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:14px;font-weight:normal;margin-top:0;margin-bottom:3px;text-align:left;">
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
<tr mc:hideable>
	<td align="center" valign="top">
		<!-- CENTERING TABLE // -->
		<table border="0" cellpadding="0" cellspacing="0" width="100%"  >
			<tr>
				<td align="center" valign="top">
					<!-- FLEXIBLE CONTAINER // -->
					<table border="0" cellpadding="30" cellspacing="0" width="500" class="flexibleContainer">
						<tr>
							<td valign="top" width="500" class="flexibleContainerCell">

								<!-- CONTENT TABLE // -->
								<table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr>
										<td align="left" valign="top" class="flexibleContainerBox">
											<table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
												<tr>
													<td align="left" class="textContent">
														<h3 style="color:#140B09;line-height:125%;font-family:Helvetica,Arial,sans-serif;font-size:20px;font-weight:normal;margin-top:0;margin-bottom:8px;text-align:left;">
															{{ucwords($order->name)}}
														</h3>
														<div style="text-align:left;font-family:Helvetica,Arial,sans-serif;font-size:13px;margin-bottom:0;color:#251714;line-height:135%;">
															<table cellpadding="3" style="width:100%">
																<tr>
																	<th colspan="2">Produk Yang di Pesan </th>
																</tr>
																<tr>
																	<td>
																		<a href="{{$order->product->url}}">{{$order->product->name}}</a>
																	</td>
																</tr>
																<tr>
																	<th  colspan="2">Kode Produk Yang di Pesan </th>
																</tr>
																<tr>
																	<td>
																		<a href="#">{{$order->code}}</a>
																	</td>
																</tr>
																<tr>
																	<td colspan="2"><hr></td>
																</tr>
																<tr>
																	<td width="120">Email </td>
																	<td>{{$order->email}}</td>
																</tr>
																<tr>
																	<td width="120">Nomor Telepon</td>
																	<td>{{$order->phone}}</td>
																</tr>
																<tr>
																	<td width="120">Alamat</td>
																	<td>{{$order->address}}</td>
																</tr>
															</table>
														</div>
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


@endsection
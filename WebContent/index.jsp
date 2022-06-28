<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <!-- Custom Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Invoice..!</title>

</head>

<body>
<form method="post" action="invoice" id ="myfrm" >
    <div class="my-5 page" size="A4">
        <div class="p-5">
            <section class="top-content bb d-flex justify-content-between">
                <div class="logo">
                    <img src="images/logo.jpg" alt="" class="img-fluid">
                </div>
                <div class="top-left">
                    <div class="graphic-path">
                        <p>Export Invoice</p>
                    </div>
                    <div class="position-relative">
                        <p>Invoice No. <input type="text" name="invoice"></p>
                        <p>Date: <input type="date" name="myDate" id=""></p>
                    </div>
                </div>
            </section>

            <section class="store-user mt-5">
                <div class="col-10">
                    <div class="row bb pb-3">
                        <div class="col-7">
                            <p>Supplier,</p>
                            <h2>MITS Solution Private Limited</h2>
                            <p class="address">588 B, Ranjit Avenue, <br> Amritsar, Punjab, <br>India. </p>
                            <div class="txn mt-2">GSTIN 03AEHPA8898RIZP</div>
                        </div>

                        <div class="col-5">
                            <p>Recepient's Details (Billed to):</p>
                            <h2><input type="text" name="myName" id="name" placeholder="Enter name"></h2>
                            <p class="address"> <textarea name="myText" cols="30" rows="2" placeholder="Enter address"></textarea></p>
                            Country (Place of supply):<input type ="text" id="country" value ="India">  
                        </div>
                    </div>
            </section>

            <section class="product-area mt-4">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td >Sr. No.</td>
                            <td width="38%">Description of goods/services</td>
                            <td width="5%">HSN/SAC</td>
                            <td width="10%">Unit </td>
                            <td width="15%">Rate</td>
                            <td width="15%">Amount</td>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><input type="text" name="description" id="description_1" class="form-control" autocomplete="off"></td>
                            <td><input type="text" name="hsn/sac[]" id="hsn/sac_1" class="form-control" autocomplete="off"></td>
                            <td><input type="text" name="quantity[]" id="quantity_1" class="form-control quantity" autocomplete="off"></td>
                            <td><input type="number" name="rate[]" id="rate_1" class="form-control rate" autocomplete="off"></td>
                            <td><input type="number" name="amount[]" id="amount_1" class="form-control amount" autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><input type="text" name="description" id="description_1" class="form-control" autocomplete="off"></td>
                            <td><input type="text" name="hsn/sac[]" id="hsn/sac_1" class="form-control" autocomplete="off"></td>
                            <td><input type="text" name="quantity[]" id="quantity_1" class="form-control quantity" autocomplete="off"></td>
                            <td><input type="number" name="rate[]" id="rate_1" class="form-control rate" autocomplete="off"></td>
                            <td><input type="number" name="amount[]" id="amount_1" class="form-control amount" autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><input type="text" name="description" id="description_1" class="form-control" autocomplete="off"></td>
                            <td><input type="text" name="hsn/sac[]" id="hsn/sac_1" class="form-control" autocomplete="off"></td>
                            <td><input type="text" name="quantity[]" id="quantity_1" class="form-control quantity" autocomplete="off"></td>
                            <td><input type="number" name="rate[]" id="rate_1" class="form-control rate" autocomplete="off"></td>
                            <td><input type="number" name="amount[]" id="amount_1" class="form-control amount" autocomplete="off"></td>
                        </tr>  
                        
                    </tbody>
                </table>
            </section>

            <section class="balance-info">
                <div class="row">
                    <table class="table border-0 table-hover">
                        <tr>
                            <td>Amount in words (rupees):</td>
                            <td ><input type="text" name ="amt" placeholder="Enter here"></td>
                        </tr>
                        <tr>
                            <td>Balance due :</td>
                            <td><input type ="number" name="due_bal"></td>
                        </tr>
                    </table>
                        
                    <div class="col-4">
                        <!-- Signature -->
                        <div class="col-12">
                            <img src="images/signature.png" class="img-fluid" alt="">
                            <p class="text-center m-0"> Director Signature </p>
                        </div>
                    </div>
                   
                </div>
                
                <p>Current account number: 50200058836611 | IFSC Code: HDFC0001407 | PAN: AAOCM6029L </p>
                
            </section>

            <!-- Cart BG -->
            <img src="images/cart.jpg" class="img-fluid cart-bg" alt="">
            
            <footer>
                <hr>
                    <p class="m-0 font-weight-bold"> Note: </p>
                    <p>The supply is meant for export without payment of tax under LUT .</p>
            </footer>
            <!--  
			<button onclick="myprint('myfrm')">Submit</button>
			<input type="button" onclick="myprint('myfrm')" value="Save and print">
			-->
			<div class="form-group form-button">
								<button type="submit" onclick="myprint('myfrm')"
									class="form-submit"  >Save and print</button>
							</div>
        </div>
    </div>
</form>

<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>

<script>
    function myprint(myfrm){
    const element = document.getElementById(myfrm);
    html2pdf().from(element).save();
}
</script>

</body>
</html>
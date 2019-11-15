[#ftl]
[#import "/spring.ftl" as spring /]
<html lang="en">
<head>
[#include '/nav_bar.ftl']
<link rel="stylesheet" href="[@spring.url '/CSS/single_product.css' /]"/>
</head>
<body>




<section class="single-product">

[#list  book as book]



    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div id="product-slider" class="carousel slide carousel-fade" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                              <img src="[@spring.url '${book.photopath}' /]" class="d-block">
                        </div>
                    </div>
                </div>
            </div>



                <div class="col-md-7">
                    <p class="new-arrival text-center">NEW</p>
                    <h2> ${book.getTitle} </h2>
                    <p>${book.author}</p>
                    <p>Book ISBN: IRSC2007</p>

                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>



                    <p class="price"> ${book.price} </p>
                    <p><strong>Genre:</strong> ${book.genre}</p>
                    <p><b>Language:</b>${book.language}</p>
                    <p><b>Publication Year:</b> ${book.year}</p>
                    <label>Quantity:</label>
                    <input type="text" value="1">
                    <button type="button" class="btn btn-primary"> Add to Cart</button>



                    [/#list]



            </div>
        </div>
    </div>
</section>

<section class="product-description">
    <div class="container">
        <h6>Product Description</h6>
        <p> This book is very good please buy it i need money</p>
        <p> This book is very good please buy it i need money</p>

        <hr>
    </div>

</section>
</body>
</html>
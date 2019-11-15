[#ftl]
[#import "/spring.ftl" as spring /]
<html lang="en">
<head>
[#include '/nav_bar.ftl']
 <link rel="stylesheet" href="[@spring.url '/CSS/single_product.css' /]"/>
</head>
    <body>

    <style>

    body {
      background-image: url("../images/books.jpeg");
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;

    }
    </style>
    <section class="single-product">

    [#list  books as books]
    [#if books.id == 33 ]

         <div class="container">
             <div class="row">
                 <div class="col-md-5">
                     <div id="product-slider" class="carousel slide carousel-fade" data-ride="carousel">
                         <div class="carousel-inner">
                             <div class="carousel-item active">
                                   <img src="[@spring.url '${books.photopath}' /]" class="d-block">
                             </div>
                         </div>
                     </div>
                 </div>



                 <div class="col-md-7">
                       <p class="new-arrival text-center">NEW</p>
                       <h2> ${books.title} </h2>
                       <p>${books.author}</p>
                       <p>Book ISBN: IRSC2007</p>

                       <i class="fa fa-star"></i>
                       <i class="fa fa-star"></i>
                       <i class="fa fa-star"></i>
                       <i class="fa fa-star"></i>
                       <i class="fa fa-star-half-o"></i>



                       <p class="price"> ${books.price} $</p>
                       <p><strong>Genre:</strong> ${books.genre}</p>
                       <p><b>Language:</b>${books.language}</p>
                       <p><b>Publication Year:</b> ${books.year}</p>
                       <label>Quantity:</label>
                       <input type="text" value="1">
                       <button type="button" class="btn btn-primary"> Add to Cart</button>

                 </div>
             </div>
         </div>
     </section>

       <section class="product-description">
           <div class="container">
               <h6>Product Description</h6>
               <p> ${books.comment} </p>
           </div>

              [/#if]
              [/#list]

         </section>
    </body>
</html>

[#ftl]
[#import "/spring.ftl" as spring /]
<html lang="en">

<head>
[#include '/nav_bar.ftl']
	<title>BookStar</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>

body {
  background-image: url("../images/books.jpeg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;

}
.content {
  max-width: 1000px;
  margin: auto;
  }

 * {
  box-sizing: border-box;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 500px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
}
p {
   margin: 0px;
   padding: 0px;
}

hr {
    display: block;
    margin-before: 0.5em;
    margin-after: 0.5em;
    margin-start: auto;
    margin-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 2px;
}
</style>


</head>
<body>



</nav>
</div>
<div class="content">&nbsp;&nbsp;

<h2 style="color:brown;"><center>NEW RELEASES</h2></center>
<hr></hr>
&nbsp;&nbsp;&nbsp;&nbsp;


<div class="row">
  <div class="column" style="background-color:;">
  <center><img src="../images/darkIllusion.jpg" alt="Christine Feehan" width="200" height="300">
  &nbsp;
    <h4>Dark Illusion</h4>
    <p> Author: Christine Feehan</p>
	<p>Category: Fantasy</p>
	<p>Price: 3.55 $</p>
	<button type="button" class="btn btn-success">Add to cart</button></center>
  </div>
  <div class="column" style="background-color:#;">
    <center><img src="../images/theWhisperer.jpg" alt="Karin Fossum" width="200" height="300">
  &nbsp;
    <h4>The Whisperer</h4>
    <p> Author: Karin Fossum</p>
	<p>Category: Crime</p>
	<p>Price: 2.80 $</p>
	<button type="button" class="btn btn-success">Add to cart</button></center>
  </div>
  <div class="column" style="background-color:;">
    <center><img src="../images/horrorInTheEast.jpg" alt="Laurence Rees" width="200" height="300">
  &nbsp;
    <h4>Horror In The East</h4>
    <p> Author: Laurence Rees</p>
	<p>Category: Horror</p>
	<p>Price: 5.80 $</p>
	<button type="button" class="btn btn-success">Add to cart</button></center>
  </div>

</div>
&nbsp;&nbsp;
<div class="row">
  <div class="column" style="background-color:#;">
    <center><img src="../images/brightfall.jpg" alt="Jamie Lee Moyer" width="200" height="300">
  &nbsp;
    <h4>Brightfall</h4>
    <p> Author: Jamie Lee Moyer</p>
	<p>Category: Fantasy</p>
	<p>Price: 6.20 $</p>
	<button type="button" class="btn btn-success">Add to cart</button></center>
  </div>
  <div class="column" style="background-color:#;">
    <center><img src="../images/theMister.jpg" alt="E.L.James" width="200" height="300">
  &nbsp;
    <h4>The Mister</h4>
    <p> Author: E.L.James</p>
	<p>Category: Mistery</p>
	<p>Price: 4.50 $</p>
	<button type="button" class="btn btn-success">Add to cart</button></center>
  </div>
  <div class="column" style="background-color:#;">
    <center><img src="../images/theAutumnBride.jpg" alt="AnneGracie" width="200" height="300">
  &nbsp;
    <h4>The Autumn Bride</h4>
    <p> Author: Anne Gracie</p>
	<p>Category: Romance</p>
	<p>Price: 6.60 $</p>
	<button type="button" class="btn btn-success">Add to cart</button></center>
  </div>

</div>
</div>
&nbsp;&nbsp;
<div class="footer">
  <h5>"A room without books is like a body without a soul."<h5>
  <i> Marcus Tullius Cicero</i>
</div>
</body>
</html>
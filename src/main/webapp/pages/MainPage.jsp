<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title th:text="${product.pname}">Product Page</title>
    
</head>

<body>
    <div class="card-container">
        <img th:src="@{/images/{image}(image=${product.pimage})}" alt="Product Image"/>
        <div class="product-container">
            <h1 class="product-title" th:text="${product.pname}">${product.pname}</h1>
            <p class="product-description" th:text="${product.pdescrip}">${product.pdescrip}</p>
            <div class="quantity-container">
                <span class="product-price" id="product-price" th:text="${product.pprice}">${product.pprice}</span>
                <div class="quantity-btn-container">
                    <button onclick="decrement()">-</button>
                    <span class="quantity-text" id="quantity-text">1</span>
                    <button onclick="increment()">+</button>
                </div>
            </div>
            <p class="quantity-total" id="quantity-total">Quantity : 1</p>
        </div>
        <button type="button" class="btn-buy">Buy Now</button>
    </div>

	<script>
	    const quantityText = document.getElementById('quantity-text');
	    const quantityTotal = document.getElementById('quantity-total');
	    const productPrice = document.getElementById('product-price');

	    // Safely extract the numeric base price from the element's text content
	    const basePrice = parseFloat(productPrice.innerText.replace(/[^\d.]/g, ''));
	  

	    function increment() {
	        let quantity = parseInt(quantityText.innerText, 10);
	        if (quantity < 10) {
	            quantityText.innerText = ++quantity;
	        } else {
	            alert("You can't buy more than 10 products.");
	        }
	        setQuantityAndTotal(quantity);
	    }

	    function decrement() {
	        let quantity = parseInt(quantityText.innerText, 10);
	        if (quantity > 1) {
	            quantityText.innerText = --quantity;
	        } else {
	            alert("You must buy at least one product.");
	        }
	        setQuantityAndTotal(quantity);
	    }

	    function setQuantityAndTotal(quantity) {
	        // Update the quantity display
	        quantityTotal.innerText = `Quantity : ${quantity}`;
	        
	        // Calculate the total price and update the display
	        const totalPrice = basePrice * quantity;
	        productPrice.innerText = `₹ ${totalPrice.toFixed(2)}`;
	    }
	</script>

</body>
</html>
<style>
	
	body {
	    font-family: Arial, sans-serif;
	    background-color: #f2f2f2;
	    margin: 0;
	    padding: 0;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    min-height: 100vh;
	}

	.card-container {
	    background-color: #fff;
	    width: 350px;
	    border-radius: 15px;
	    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	    overflow: hidden;
	    text-align: center;
	    margin: 20px;
	    padding: 20px;
	}

	.product-img {
	    width: 100%;
	    height: auto;
	    border-radius: 10px;
	}

	.product-title {
	    font-size: 22px;
	    font-weight: bold;
	    color: #333;
	    margin: 10px 0;
	}

	.product-description {
	    font-size: 14px;
	    color: #555;
	    margin: 10px 0;
	    line-height: 1.5;
	}

	.quantity-container {
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    margin: 20px 0;
	}

	.product-price {
	    font-size: 20px;
	    font-weight: bold;
	    color: #27ae60;
	}

	.quantity-btn-container {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    gap: 10px;
	}

	.quantity-btn-container button {
	    background-color: #dfe6e9;
	    border: none;
	    padding: 5px 10px;
	    font-size: 18px;
	    border-radius: 5px;
	    cursor: pointer;
	    transition: background-color 0.3s;
	}

	.quantity-btn-container button:hover {
	    background-color: #b2bec3;
	}

	.quantity-text {
	    font-size: 18px;
	    font-weight: bold;
	    color: #333;
	}

	.quantity-total {
	    font-size: 16px;
	    color: #555;
	}

	.btn-buy {
	    background-color: #27ae60;
	    color: #fff;
	    font-size: 18px;
	    padding: 10px 20px;
	    border: none;
	    border-radius: 5px;
	    cursor: pointer;
	    transition: background-color 0.3s;
	    margin-top: 20px;
	}

	.btn-buy:hover {
	    background-color: #219150;
	}

	</style>
	

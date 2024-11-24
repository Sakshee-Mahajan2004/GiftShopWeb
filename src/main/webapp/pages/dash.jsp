<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - GiftHouse</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Add New Product</h1>
        <form action="SaveProductInfo" method="post" enctype= multipart/form-data>
            <div class="form-group">
                <label for="product-name">Product Name</label>
                <input type="text" id="product-name" name="pname" placeholder="Enter product name" required>
            </div>

            <div class="form-group">
                <label for="product-description">Product Description</label>
                <textarea id="product-description" name="pdescrip" placeholder="Enter product description" required></textarea>
            </div>

            <div class="form-group">
                <label for="product-price">Price</label>
                <input type="number" id="product-price" name="pprice" placeholder="Enter product price" required>
            </div>

            <div class="form-group">
                <label for="product-category">Category</label>
                <select id="product-category" name="pcategory" required>
                    <option value="" disabled selected>Select category</option>
                    <option value="gifts">Gifts</option>
                    <option value="decor">Home Decor</option>
                    <option value="personalized">Personalized</option>
                    <option value="accessories">Accessories</option>
                </select>
            </div>

            <div class="form-group">
                <label for="product-image">Upload Image</label>
                <input type="file" id="product-image" name="ProductImage" accept="image/*" required>
            </div>

            <button type="submit" class="btn-submit">Add Product</button>
        </form>
    </div>
</body>
</html>
<style>
	/* General Reset */
	body {
	    margin: 0;
	    font-family: Arial, sans-serif;
	    background-color: #f4f4f9;
	    color: #333;
	}

	.container {
	    max-width: 600px;
	    margin: 50px auto;
	    padding: 20px;
	    background: #fff;
	    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	    border-radius: 8px;
	}

	h1 {
	    text-align: center;
	    margin-bottom: 20px;
	    color: #444;
	}

	form {
	    display: flex;
	    flex-direction: column;
	    gap: 15px;
	}

	.form-group {
	    display: flex;
	    flex-direction: column;
	}

	label {
	    font-weight: bold;
	    margin-bottom: 5px;
	    color: #555;
	}

	input[type="text"],
	input[type="number"],
	input[type="file"],
	textarea,
	select {
	    padding: 10px;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	    font-size: 14px;
	    outline: none;
	}

	input[type="text"]:focus,
	input[type="number"]:focus,
	textarea:focus,
	select:focus {
	    border-color: #007bff;
	}

	textarea {
	    min-height: 100px;
	    resize: vertical;
	}

	.btn-submit {
	    padding: 12px;
	    background-color: #007bff;
	    color: white;
	    border: none;
	    border-radius: 5px;
	    font-size: 16px;
	    cursor: pointer;
	    text-align: center;
	    transition: background-color 0.3s ease;
	}

	.btn-submit:hover {
	    background-color: #0056b3;
	}

	@media (max-width: 768px) {
	    .container {
	        padding: 15px;
	    }
	}

	</style>
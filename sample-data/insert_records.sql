-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(3, 'Beverage'),
(1, 'Canned'),
(2, 'Instant'),
(4, 'Snack');


-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `product_id`, `inventory_quantity`, `reorder_level`, `last_updated_date`) VALUES
(1, 101, 50, 10, '2025-01-05'),
(2, 102, 80, 20, '2025-01-05'),
(3, 103, 60, 15, '2025-01-07'),
(4, 104, 100, 25, '2025-01-07');


-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `price`, `expiration_date`, `user_id`) VALUES
(101, 'Sardines', 1, 25.00, '2025-02-10', 1),
(102, 'Noodles', 2, 15.00, '2025-12-25', 1),
(103, 'Softdrinks', 3, 20.00, '2026-03-05', 2),
(104, 'Biscuits', 4, 12.00, '2025-02-18', 2);


-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `discount_rate`, `start_date`, `end_date`) VALUES
(301, 10.00, '2025-01-15', '2025-01-20'),
(302, 15.00, '2025-02-10', '2025-02-15');


-- Dumping data for table `promotionproduct`
--

INSERT INTO `promotionproduct` (`promotion_id`, `product_id`) VALUES
(301, 101),
(302, 103);


-- Dumping data for table `stocktransaction`
--

INSERT INTO `stocktransaction` (`transaction_id`, `product_id`, `transaction_type_id`, `stock_quantity`, `transaction_date`) VALUES
(5001, 101, 1, 30, '2025-01-01'),
(5002, 101, 2, 5, '2025-01-03'),
(5003, 103, 1, 40, '2025-01-04'),
(5004, 103, 2, 10, '2025-01-06');


-- Dumping data for table `transactiontype`
--

INSERT INTO `transactiontype` (`transaction_type_id`, `transaction_type`) VALUES
(1, 'Stock-In'),
(2, 'Stock-Out');


-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'sari_owner01', 'owner01'),
(2, 'sari_owner02', 'ownero2');



-- Databricks notebook source
insert into ordertracker.line_items (line_item_id, order_id, product_id, cost_per_item, discount, quantity, currency, line_total, line_status) 
values (32, 880, 247, 70.12, 7.07, 1, 'EUR', 70.12, 1),
(42, 940, 423, 82.76, 0.96, 15, 'USD', 1241.4, 2),
(88, 596, 328, 24.65, 1.25, 18, 'USD', 443.7, 3),
(93, 552, 359, 9.58, 4.81, 16, 'EUR', 153.28, 3),
(48, 789, 171, 52.92, 9.95, 4, 'EUR', 211.68, 2),
(78, 451, 493, 51.35, 4.16, 1, 'EUR', 51.35, 1),
(87, 577, 279, 77.17, 1.88, 11, 'GBP', 848.87, 3),
(43, 891, 288, 37.59, 6.57, 16, 'USD', 601.44, 3),
(43, 805, 493, 59.49, 0.82, 9, 'EUR', 535.41, 2),
(41, 621, 443, 22.79, 1.11, 7, 'USD', 159.53, 1),
(31, 909, 290, 92.23, 1.2, 15, 'GBP', 1383.45, 3),
(13, 577, 246, 3.47, 9.52, 7, 'USD', 24.29, 1),
(74, 673, 119, 62.87, 2.34, 19, 'GBP', 1194.53, 99),
(44, 741, 494, 56.13, 3.49, 11, 'EUR', 617.43, 2),
(24, 418, 264, 16.95, 7.48, 18, 'USD', 305.1, 2),
(61, 826, 254, 31.3, 3.79, 8, 'EUR', 250.4, 2),
(38, 443, 174, 20.08, 5.63, 13, 'GBP', 261.04, 99),
(99, 740, 119, 80.61, 7.22, 17, 'EUR', 1370.37, 2),
(87, 897, 279, 5.44, 9.3, 10, 'USD', 54.4, 2),
(29, 460, 264, 60.37, 6.27, 16, 'USD', 965.92, 2),
(17, 607, 279, 50.22, 0.74, 4, 'USD', 200.88, 3),
(76, 969, 279, 67.46, 3.97, 12, 'USD', 809.52, 3),
(13, 986, 299, 68.51, 5.63, 7, 'EUR', 479.57, 1),
(13, 741, 288, 49.33, 7.7, 12, 'USD', 591.96, 1),
(60, 885, 397, 75.16, 8.29, 9, 'USD', 676.44, 2),
(92, 880, 142, 72.05, 5.06, 14, 'USD', 1008.7, 3),
(67, 979, 397, 79.55, 5.64, 6, 'EUR', 477.3, 99),
(51, 856, 179, 54.8, 1.88, 16, 'GBP', 876.8, 3),
(23, 412, 217, 48.35, 8.88, 13, 'USD', 628.55, 3),
(41, 665, 443, 44.64, 5.73, 17, 'EUR', 758.88, 3),
(61, 465, 415, 14.54, 1.84, 19, 'USD', 276.26, 1),
(68, 758, 175, 24.58, 6.0, 12, 'USD', 294.96, 2),
(15, 741, 423, 61.21, 3.08, 9, 'EUR', 550.89, 2),
(36, 807, 110, 3.88, 6.17, 19, 'GBP', 73.72, 2),
(85, 826, 251, 15.52, 3.58, 2, 'GBP', 31.04, 2),
(94, 683, 219, 4.56, 8.62, 7, 'USD', 31.92, 2),
(29, 485, 179, 21.86, 2.46, 20, 'EUR', 437.2, 3),
(30, 856, 456, 78.32, 6.31, 20, 'GBP', 1566.4, 3),
(91, 318, 179, 10.14, 8.19, 12, 'USD', 121.68, 1),
(91, 508, 414, 45.88, 9.31, 12, 'EUR', 550.56, 3),
(92, 673, 299, 44.54, 2.44, 12, 'USD', 534.48, 2),
(8, 326, 142, 34.17, 2.37, 15, 'EUR', 512.55, 1),
(49, 891, 247, 47.88, 0.49, 14, 'USD', 670.32, 2),
(66, 953, 443, 9.84, 8.96, 3, 'USD', 29.52, 2),
(6, 410, 179, 16.91, 4.37, 11, 'EUR', 186.01, 2),
(36, 460, 401, 33.34, 7.9, 20, 'GBP', 666.8, 3),
(84, 773, 119, 72.83, 6.02, 12, 'USD', 873.96, 3),
(34, 622, 423, 94.66, 9.42, 13, 'EUR', 1230.58, 1),
(74, 868, 456, 24.12, 0.02, 1, 'USD', 24.12, 3),
(17, 773, 414, 37.19, 1.87, 18, 'GBP', 669.42, 2),
(54, 900, 242, 44.0, 5.93, 10, 'USD', 440.0, 1),
(9, 743, 254, 82.18, 5.27, 12, 'EUR', 986.16, 99),
(53, 363, 401, 60.25, 3.08, 13, 'EUR', 783.25, 2),
(23, 907, 435, 82.6, 3.67, 13, 'USD', 1073.8, 1),
(60, 842, 242, 57.7, 1.36, 6, 'EUR', 346.2, 2),
(28, 753, 494, 26.87, 5.4, 19, 'EUR', 510.53, 2),
(88, 568, 279, 2.74, 1.27, 3, 'USD', 8.22, 3),
(2, 900, 413, 13.14, 1.22, 16, 'USD', 210.24, 2),
(19, 410, 139, 20.95, 8.72, 18, 'EUR', 377.1, 2),
(25, 684, 452, 40.46, 9.17, 1, 'USD', 40.46, 99),
(54, 434, 468, 11.65, 5.3, 4, 'USD', 46.6, 99),
(16, 311, 359, 75.76, 6.33, 10, 'GBP', 757.6, 2),
(50, 493, 171, 54.36, 6.92, 11, 'EUR', 597.96, 2),
(82, 348, 198, 93.93, 7.21, 15, 'USD', 1408.95, 99),
(67, 740, 179, 75.55, 3.75, 14, 'GBP', 1057.7, 1),
(15, 460, 109, 49.66, 3.36, 17, 'USD', 844.22, 2),
(59, 712, 452, 89.34, 3.81, 9, 'EUR', 804.06, 2),
(90, 571, 379, 84.9, 4.78, 15, 'EUR', 1273.5, 2),
(78, 535, 290, 3.23, 4.49, 2, 'USD', 6.46, 2),
(86, 900, 397, 16.33, 4.28, 10, 'EUR', 163.3, 2),
(27, 630, 468, 91.14, 8.59, 3, 'GBP', 273.42, 1),
(27, 441, 456, 32.64, 4.96, 20, 'USD', 652.8, 2),
(19, 773, 175, 22.0, 8.1, 17, 'EUR', 374.0, 99),
(45, 548, 119, 72.5, 5.4, 7, 'GBP', 507.5, 3),
(19, 880, 179, 52.51, 6.82, 18, 'USD', 945.18, 2),
(21, 348, 397, 78.49, 4.01, 19, 'EUR', 1491.31, 2),
(5, 930, 171, 74.11, 5.15, 19, 'USD', 1408.09, 2),
(1, 818, 251, 59.19, 4.74, 3, 'GBP', 177.57, 2),
(58, 971, 179, 17.18, 4.73, 20, 'USD', 343.6, 99),
(96, 364, 219, 11.99, 2.05, 13, 'USD', 155.87, 1),
(72, 502, 452, 86.05, 3.06, 2, 'EUR', 172.1, 1),
(16, 410, 175, 82.94, 3.91, 9, 'USD', 746.46, 2),
(81, 419, 452, 20.45, 9.43, 12, 'USD', 245.4, 2),
(75, 868, 139, 83.17, 0.25, 17, 'USD', 1413.89, 2),
(50, 536, 119, 69.77, 7.37, 16, 'USD', 1116.32, 2),
(80, 833, 242, 83.8, 2.61, 1, 'EUR', 83.8, 2),
(4, 855, 359, 93.76, 1.89, 3, 'EUR', 281.28, 3),
(88, 469, 288, 31.25, 4.03, 16, 'EUR', 500.0, 2),
(26, 885, 299, 3.29, 3.4, 2, 'GBP', 6.58, 2),
(87, 578, 279, 94.67, 0.79, 19, 'GBP', 1798.73, 3),
(29, 969, 422, 79.85, 6.83, 9, 'EUR', 718.65, 1),
(91, 342, 110, 72.12, 6.31, 2, 'EUR', 144.24, 99),
(81, 410, 423, 24.57, 4.31, 2, 'EUR', 49.14, 3),
(62, 696, 423, 67.34, 4.26, 9, 'GBP', 606.06, 2),
(46, 463, 435, 17.41, 8.81, 7, 'EUR', 121.87, 3),
(76, 580, 423, 6.39, 1.8, 18, 'USD', 115.02, 2),
(74, 978, 303, 33.36, 9.33, 14, 'EUR', 467.04, 3),
(23, 534, 198, 39.26, 8.56, 11, 'GBP', 431.86, 2),
(42, 959, 119, 76.75, 6.54, 17, 'USD', 1304.75, 2),
(95, 323, 493, 48.04, 9.19, 8, 'GBP', 384.32, 3),
(75, 619, 382, 7.81, 2.19, 7, 'USD', 54.67, 3),
(24, 930, 119, 74.46, 5.77, 10, 'USD', 744.6, 1),
(90, 597, 174, 12.22, 9.87, 14, 'USD', 171.08, 2),
(77, 553, 379, 15.56, 4.2, 11, 'USD', 171.16, 3),
(1, 485, 413, 54.13, 7.56, 18, 'USD', 974.34, 2),
(77, 469, 401, 15.12, 8.6, 14, 'EUR', 211.68, 2),
(71, 309, 422, 13.45, 2.48, 7, 'USD', 94.15, 99),
(4, 961, 288, 94.73, 8.73, 4, 'USD', 378.92, 2),
(16, 318, 299, 77.24, 8.62, 5, 'EUR', 386.2, 2),
(66, 550, 111, 2.09, 8.65, 11, 'USD', 22.99, 2),
(43, 575, 468, 52.22, 8.06, 17, 'GBP', 887.74, 2),
(81, 877, 299, 13.49, 9.28, 20, 'USD', 269.8, 3),
(24, 522, 414, 27.47, 6.28, 3, 'EUR', 82.41, 2),
(31, 607, 314, 42.22, 0.74, 18, 'GBP', 759.96, 99),
(79, 488, 247, 93.28, 2.67, 17, 'USD', 1585.76, 1),
(74, 773, 382, 2.07, 3.94, 10, 'GBP', 20.7, 99),
(71, 464, 110, 10.34, 1.93, 7, 'USD', 72.38, 99),
(59, 826, 171, 86.49, 6.35, 14, 'USD', 1210.86, 2),
(48, 575, 456, 32.21, 5.75, 6, 'USD', 193.26, 3),
(35, 830, 414, 67.92, 1.67, 9, 'USD', 611.28, 2),
(24, 412, 171, 36.75, 8.78, 1, 'EUR', 36.75, 2),
(18, 410, 279, 27.03, 9.76, 13, 'USD', 351.39, 1),
(27, 868, 331, 64.61, 3.67, 17, 'USD', 1098.37, 2),
(14, 701, 290, 86.28, 3.0, 12, 'USD', 1035.36, 2),
(35, 643, 288, 82.96, 4.25, 9, 'USD', 746.64, 2),
(75, 652, 468, 40.05, 5.9, 7, 'GBP', 280.35, 1),
(37, 955, 494, 6.56, 5.98, 6, 'EUR', 39.36, 2),
(95, 539, 251, 49.18, 3.75, 8, 'USD', 393.44, 3),
(79, 765, 493, 78.33, 3.0, 1, 'EUR', 78.33, 1),
(67, 733, 142, 41.24, 1.94, 16, 'USD', 659.84, 2),
(38, 975, 415, 4.16, 9.93, 14, 'GBP', 58.24, 99),
(35, 535, 379, 69.48, 0.52, 6, 'USD', 416.88, 99),
(64, 830, 415, 58.44, 3.74, 6, 'GBP', 350.64, 2),
(17, 740, 217, 50.82, 6.02, 2, 'USD', 101.64, 2),
(42, 652, 279, 93.29, 1.48, 6, 'USD', 559.74, 3),
(32, 549, 111, 82.28, 2.45, 17, 'USD', 1398.76, 2),
(46, 597, 119, 32.2, 9.25, 10, 'EUR', 322.0, 3),
(36, 513, 217, 19.27, 0.39, 11, 'USD', 211.97, 1),
(86, 896, 247, 93.97, 0.41, 3, 'USD', 281.91, 3),
(17, 818, 379, 24.22, 0.26, 8, 'EUR', 193.76, 2),
(91, 733, 246, 19.07, 0.46, 7, 'EUR', 133.49, 2),
(16, 334, 174, 25.74, 3.28, 19, 'GBP', 489.06, 3),
(39, 353, 111, 44.59, 9.17, 11, 'USD', 490.49, 2),
(30, 649, 254, 60.74, 6.94, 20, 'USD', 1214.8, 2),
(72, 936, 119, 42.41, 8.53, 8, 'EUR', 339.28, 2),
(85, 897, 264, 31.71, 0.19, 10, 'EUR', 317.1, 1),
(74, 595, 247, 73.14, 0.9, 4, 'USD', 292.56, 2),
(67, 737, 254, 12.36, 8.14, 2, 'USD', 24.72, 1),
(85, 701, 171, 35.73, 2.71, 4, 'USD', 142.92, 2),
(49, 619, 119, 22.77, 9.17, 11, 'EUR', 250.47, 1),
(21, 465, 494, 70.9, 1.74, 15, 'EUR', 1063.5, 2),
(91, 761, 328, 47.55, 0.56, 2, 'USD', 95.1, 1),
(93, 826, 290, 60.54, 8.67, 15, 'EUR', 908.1, 1),
(56, 445, 397, 83.47, 1.37, 12, 'USD', 1001.64, 2),
(28, 656, 171, 93.97, 7.44, 3, 'USD', 281.91, 1),
(45, 364, 288, 63.6, 7.9, 12, 'USD', 763.2, 3),
(56, 552, 242, 77.63, 9.58, 18, 'EUR', 1397.34, 2),
(4, 549, 251, 35.55, 2.93, 17, 'GBP', 604.35, 3),
(44, 918, 179, 11.91, 10.0, 10, 'USD', 119.1, 2),
(100, 522, 314, 49.32, 6.1, 2, 'USD', 98.64, 2),
(94, 401, 174, 58.62, 6.23, 7, 'EUR', 410.34, 2),
(96, 540, 443, 48.12, 4.85, 18, 'USD', 866.16, 1),
(28, 959, 331, 86.68, 4.86, 14, 'USD', 1213.52, 1),
(87, 758, 179, 40.14, 7.4, 19, 'USD', 762.66, 1),
(24, 780, 359, 77.75, 7.15, 9, 'EUR', 699.75, 2),
(58, 381, 435, 33.37, 0.32, 3, 'USD', 100.11, 99),
(94, 857, 171, 33.46, 3.98, 20, 'USD', 669.2, 1),
(97, 701, 217, 33.34, 8.81, 17, 'EUR', 566.78, 3),
(45, 606, 379, 85.19, 3.0, 14, 'GBP', 1192.66, 3),
(26, 980, 423, 45.96, 8.9, 16, 'GBP', 735.36, 3),
(6, 630, 175, 38.99, 2.26, 5, 'EUR', 194.95, 3),
(57, 497, 109, 49.77, 9.17, 12, 'GBP', 597.24, 2),
(83, 502, 110, 28.86, 1.36, 11, 'USD', 317.46, 1),
(92, 604, 314, 18.06, 7.14, 19, 'EUR', 343.14, 1),
(72, 416, 435, 48.54, 9.93, 17, 'USD', 825.18, 1),
(46, 410, 382, 10.64, 7.49, 4, 'EUR', 42.56, 1),
(95, 568, 331, 36.24, 4.13, 19, 'USD', 688.56, 99),
(2, 877, 264, 65.54, 3.34, 9, 'USD', 589.86, 3),
(47, 323, 288, 78.7, 8.05, 14, 'GBP', 1101.8, 1),
(93, 996, 468, 59.46, 0.54, 11, 'USD', 654.06, 1),
(51, 932, 198, 66.04, 8.4, 6, 'GBP', 396.24, 2),
(49, 857, 328, 49.97, 4.95, 12, 'USD', 599.64, 2),
(6, 309, 401, 17.18, 1.41, 18, 'USD', 309.24, 99),
(98, 596, 198, 78.12, 9.18, 2, 'EUR', 156.24, 3),
(10, 857, 251, 18.75, 0.41, 2, 'EUR', 37.5, 2),
(45, 803, 198, 16.7, 0.63, 20, 'EUR', 334.0, 99),
(100, 868, 251, 41.06, 4.0, 20, 'USD', 821.2, 99),
(51, 972, 174, 77.53, 1.09, 8, 'USD', 620.24, 2),
(79, 364, 288, 2.44, 0.78, 12, 'USD', 29.28, 2),
(28, 880, 142, 92.87, 2.82, 1, 'USD', 92.87, 3),
(99, 684, 111, 71.19, 7.29, 15, 'GBP', 1067.85, 1),
(37, 773, 435, 52.41, 5.12, 16, 'USD', 838.56, 2),
(34, 728, 254, 81.98, 5.9, 7, 'EUR', 573.86, 99),
(64, 675, 219, 11.27, 1.73, 10, 'EUR', 112.7, 1),
(68, 410, 443, 68.41, 0.37, 5, 'EUR', 342.05, 1),
(28, 972, 494, 85.67, 8.23, 20, 'USD', 1713.4, 3),
(75, 412, 288, 48.94, 7.85, 7, 'USD', 342.58, 2),
(90, 575, 379, 89.99, 9.35, 3, 'USD', 269.97, 2),
(69, 385, 299, 83.02, 3.43, 6, 'EUR', 498.12, 99),
(63, 536, 331, 85.86, 0.59, 8, 'USD', 686.88, 99),
(30, 441, 303, 57.93, 3.99, 13, 'EUR', 753.09, 2),
(17, 535, 331, 47.43, 6.6, 5, 'USD', 237.15, 2),
(57, 488, 414, 23.52, 2.94, 5, 'USD', 117.6, 1),
(93, 733, 242, 70.68, 8.71, 14, 'GBP', 989.52, 1),
(91, 930, 246, 34.34, 6.99, 12, 'EUR', 412.08, 2),
(70, 621, 139, 62.65, 4.05, 13, 'GBP', 814.45, 3),
(77, 592, 397, 30.6, 1.62, 9, 'EUR', 275.4, 3),
(89, 318, 109, 44.03, 4.13, 14, 'EUR', 616.42, 1),
(20, 311, 443, 79.05, 8.49, 9, 'USD', 711.45, 99),
(56, 508, 171, 45.41, 3.77, 13, 'EUR', 590.33, 1),
(52, 803, 382, 49.29, 4.04, 6, 'USD', 295.74, 2),
(30, 733, 397, 26.45, 5.43, 18, 'USD', 476.1, 1),
(25, 726, 435, 34.45, 0.95, 17, 'GBP', 585.65, 1),
(97, 918, 468, 63.57, 2.25, 11, 'EUR', 699.27, 2),
(3, 622, 142, 5.68, 7.84, 15, 'GBP', 85.2, 99),
(41, 530, 171, 73.58, 6.5, 18, 'EUR', 1324.44, 2),
(47, 996, 179, 40.06, 9.01, 5, 'USD', 200.3, 3),
(98, 447, 246, 63.17, 3.19, 2, 'USD', 126.34, 3),
(49, 571, 179, 73.79, 6.32, 3, 'GBP', 221.37, 1),
(96, 978, 246, 57.65, 6.13, 6, 'GBP', 345.9, 1),
(40, 761, 435, 41.75, 0.64, 11, 'GBP', 459.25, 3),
(63, 550, 279, 90.36, 2.15, 14, 'USD', 1265.04, 99),
(12, 766, 171, 84.17, 2.87, 13, 'USD', 1094.21, 2),
(65, 488, 314, 78.77, 6.1, 10, 'USD', 787.7, 2),
(68, 953, 443, 64.12, 7.8, 17, 'USD', 1090.04, 2),
(48, 577, 303, 63.42, 7.96, 16, 'USD', 1014.72, 2),
(87, 684, 319, 77.38, 5.98, 20, 'EUR', 1547.6, 2),
(5, 571, 493, 65.16, 9.8, 7, 'USD', 456.12, 2),
(17, 900, 142, 77.6, 1.99, 15, 'GBP', 1164.0, 2),
(86, 855, 414, 88.23, 9.98, 3, 'USD', 264.69, 2),
(6, 996, 254, 71.32, 4.77, 15, 'EUR', 1069.8, 2),
(92, 549, 314, 30.45, 5.0, 7, 'GBP', 213.15, 1),
(90, 818, 413, 7.47, 2.53, 1, 'USD', 7.47, 2),
(86, 597, 328, 68.99, 5.16, 7, 'USD', 482.93, 2),
(80, 460, 379, 9.83, 1.26, 12, 'EUR', 117.96, 2),
(80, 826, 246, 49.94, 5.58, 13, 'EUR', 649.22, 3),
(21, 959, 139, 49.6, 8.4, 20, 'GBP', 992.0, 1),
(73, 309, 175, 8.0, 5.99, 20, 'USD', 160.0, 2),
(6, 978, 415, 62.92, 9.31, 1, 'USD', 62.92, 1),
(69, 907, 379, 61.05, 9.35, 2, 'USD', 122.1, 2),
(29, 309, 110, 71.17, 2.72, 1, 'USD', 71.17, 99),
(27, 852, 111, 46.83, 5.18, 19, 'EUR', 889.77, 2),
(59, 855, 111, 82.2, 0.94, 15, 'EUR', 1233.0, 2),
(39, 309, 456, 3.31, 6.86, 3, 'USD', 9.93, 2),
(40, 562, 174, 71.8, 8.47, 14, 'EUR', 1005.2, 99),
(98, 401, 303, 6.04, 6.41, 15, 'USD', 90.6, 99),
(37, 795, 468, 17.33, 5.9, 15, 'USD', 259.95, 2),
(95, 980, 111, 25.85, 3.59, 2, 'EUR', 51.7, 3),
(37, 830, 109, 84.33, 2.31, 14, 'USD', 1180.62, 2),
(72, 323, 443, 16.58, 9.03, 12, 'EUR', 198.96, 1),
(8, 979, 422, 88.3, 1.29, 10, 'USD', 883.0, 2),
(5, 549, 299, 63.0, 1.36, 11, 'GBP', 693.0, 1),
(92, 607, 493, 72.25, 2.85, 12, 'EUR', 867.0, 2),
(7, 485, 414, 43.05, 1.09, 16, 'USD', 688.8, 1),
(6, 342, 456, 94.05, 0.89, 7, 'USD', 658.35, 2),
(95, 596, 314, 48.33, 0.54, 2, 'GBP', 96.66, 3),
(46, 596, 382, 6.51, 9.99, 17, 'EUR', 110.67, 2),
(82, 758, 401, 92.92, 0.2, 14, 'EUR', 1300.88, 3),
(92, 302, 217, 7.6, 3.06, 20, 'GBP', 152.0, 2),
(99, 562, 110, 31.08, 1.95, 11, 'USD', 341.88, 1),
(36, 539, 198, 94.54, 4.2, 15, 'USD', 1418.1, 2),
(97, 540, 303, 48.34, 9.73, 11, 'EUR', 531.74, 99),
(68, 597, 423, 81.16, 9.05, 8, 'USD', 649.28, 1),
(23, 621, 179, 51.62, 0.64, 15, 'USD', 774.3, 2),
(69, 690, 415, 23.62, 3.15, 20, 'USD', 472.4, 1),
(45, 795, 219, 92.87, 9.45, 9, 'USD', 835.83, 99),
(35, 830, 303, 68.17, 9.75, 16, 'USD', 1090.72, 3),
(72, 399, 443, 31.17, 8.55, 10, 'GBP', 311.7, 2),
(47, 595, 279, 70.12, 0.22, 20, 'USD', 1402.4, 2),
(66, 577, 251, 75.8, 9.81, 2, 'USD', 151.6, 2),
(8, 607, 303, 84.82, 0.28, 11, 'EUR', 933.02, 2),
(17, 621, 493, 70.16, 6.65, 7, 'EUR', 491.12, 2),
(41, 940, 174, 87.99, 1.41, 2, 'USD', 175.98, 2),
(58, 904, 415, 3.62, 3.35, 11, 'GBP', 39.82, 3),
(67, 535, 379, 44.23, 2.67, 11, 'EUR', 486.53, 1),
(64, 597, 242, 89.48, 6.33, 1, 'GBP', 89.48, 1),
(80, 627, 279, 79.82, 2.35, 17, 'USD', 1356.94, 1),
(100, 377, 139, 66.48, 0.27, 10, 'USD', 664.8, 2),
(2, 657, 119, 83.13, 2.0, 17, 'GBP', 1413.21, 3),
(85, 550, 494, 2.48, 9.28, 10, 'USD', 24.8, 3),
(7, 364, 290, 55.96, 3.69, 12, 'USD', 671.52, 2),
(47, 469, 111, 72.66, 2.81, 17, 'USD', 1235.22, 2),
(87, 918, 397, 28.07, 8.15, 14, 'GBP', 392.98, 3),
(72, 980, 423, 69.41, 9.86, 9, 'USD', 624.69, 2),
(90, 302, 251, 90.82, 6.5, 1, 'USD', 90.82, 2),
(52, 743, 414, 23.7, 2.5, 4, 'USD', 94.8, 1),
(8, 575, 379, 79.13, 3.15, 9, 'USD', 712.17, 2),
(2, 441, 299, 62.65, 2.59, 7, 'EUR', 438.55, 2),
(21, 381, 379, 75.39, 4.25, 17, 'EUR', 1281.63, 1),
(8, 624, 435, 38.98, 4.28, 1, 'EUR', 38.98, 2),
(41, 741, 331, 43.07, 1.28, 7, 'GBP', 301.49, 3),
(14, 616, 435, 5.54, 4.54, 2, 'USD', 11.08, 2),
(67, 718, 468, 3.67, 3.53, 18, 'USD', 66.06, 99),
(48, 627, 198, 80.14, 3.93, 19, 'GBP', 1522.66, 2),
(100, 789, 443, 84.3, 8.05, 12, 'USD', 1011.6, 1),
(56, 643, 468, 19.17, 1.81, 20, 'USD', 383.4, 2),
(6, 696, 299, 77.21, 6.01, 7, 'USD', 540.47, 1),
(16, 979, 279, 89.48, 7.15, 2, 'EUR', 178.96, 2),
(62, 309, 493, 62.85, 4.18, 11, 'USD', 691.35, 2),
(35, 741, 217, 29.7, 2.8, 11, 'USD', 326.7, 2),
(16, 619, 179, 60.38, 0.39, 18, 'USD', 1086.84, 2),
(93, 568, 319, 91.89, 9.95, 15, 'USD', 1378.35, 99),
(12, 918, 401, 91.51, 0.3, 20, 'EUR', 1830.2, 2),
(8, 886, 264, 72.43, 1.23, 11, 'EUR', 796.73, 2),
(96, 972, 299, 37.37, 1.55, 3, 'EUR', 112.11, 2),
(42, 645, 422, 36.82, 5.49, 14, 'USD', 515.48, 3),
(33, 996, 379, 79.55, 3.8, 19, 'GBP', 1511.45, 2),
(75, 575, 328, 38.76, 7.24, 11, 'USD', 426.36, 99),
(43, 701, 435, 70.97, 7.4, 13, 'EUR', 922.61, 99),
(26, 652, 413, 23.06, 0.31, 1, 'USD', 23.06, 2),
(1, 571, 139, 25.43, 7.32, 1, 'EUR', 25.43, 3),
(30, 852, 493, 34.92, 9.32, 14, 'USD', 488.88, 1),
(54, 749, 443, 82.78, 9.97, 11, 'EUR', 910.58, 2),
(23, 541, 414, 7.97, 2.81, 18, 'USD', 143.46, 2),
(70, 597, 415, 81.89, 0.32, 2, 'EUR', 163.78, 2),
(6, 465, 246, 6.12, 5.28, 19, 'GBP', 116.28, 2),
(19, 516, 264, 81.23, 5.39, 16, 'GBP', 1299.68, 2),
(68, 459, 279, 56.99, 5.15, 4, 'USD', 227.96, 2),
(70, 633, 299, 9.71, 4.95, 15, 'EUR', 145.65, 2),
(64, 549, 264, 19.54, 2.25, 10, 'EUR', 195.4, 1),
(72, 333, 443, 88.28, 9.27, 7, 'USD', 617.96, 2),
(73, 753, 171, 65.9, 5.85, 17, 'USD', 1120.3, 3),
(39, 768, 452, 11.84, 6.68, 16, 'USD', 189.44, 1),
(93, 885, 422, 80.14, 7.71, 8, 'USD', 641.12, 99),
(26, 381, 435, 50.83, 1.74, 8, 'USD', 406.64, 2),
(27, 649, 251, 70.65, 0.06, 18, 'EUR', 1271.7, 99),
(29, 562, 413, 20.76, 4.59, 16, 'USD', 332.16, 3),
(13, 730, 493, 23.11, 0.89, 12, 'EUR', 277.32, 1),
(3, 830, 119, 52.42, 8.59, 9, 'USD', 471.78, 2),
(33, 552, 382, 58.34, 3.53, 18, 'USD', 1050.12, 3),
(94, 607, 119, 89.78, 4.58, 17, 'GBP', 1526.26, 1),
(19, 889, 415, 46.22, 9.15, 3, 'EUR', 138.66, 1),
(86, 592, 246, 26.64, 9.1, 19, 'USD', 506.16, 2),
(72, 597, 110, 36.43, 0.83, 6, 'USD', 218.58, 2),
(83, 833, 254, 8.66, 9.21, 7, 'GBP', 60.62, 1),
(56, 826, 175, 31.52, 2.84, 5, 'EUR', 157.6, 1),
(15, 953, 328, 36.49, 1.59, 8, 'USD', 291.92, 2),
(85, 728, 397, 55.91, 6.18, 7, 'EUR', 391.37, 2),
(38, 730, 247, 68.31, 5.96, 13, 'EUR', 888.03, 1),
(95, 856, 415, 43.34, 3.2, 4, 'EUR', 173.36, 2),
(10, 333, 493, 37.74, 7.27, 13, 'GBP', 490.62, 2),
(47, 986, 179, 44.75, 5.71, 16, 'USD', 716.0, 3),
(93, 972, 423, 75.91, 5.53, 8, 'EUR', 607.28, 3),
(20, 865, 219, 79.01, 0.07, 19, 'USD', 1501.19, 2),
(8, 682, 171, 47.97, 1.31, 19, 'EUR', 911.43, 2),
(36, 936, 288, 71.93, 8.63, 5, 'USD', 359.65, 3),
(80, 485, 179, 63.93, 5.46, 15, 'USD', 958.95, 2),
(59, 971, 422, 72.4, 3.66, 4, 'USD', 289.6, 1),
(19, 643, 401, 85.47, 3.05, 8, 'EUR', 683.76, 1),
(49, 795, 328, 70.49, 5.73, 4, 'USD', 281.96, 2),
(67, 508, 219, 37.85, 3.59, 19, 'GBP', 719.15, 2),
(24, 622, 288, 78.7, 0.49, 13, 'GBP', 1023.1, 2),
(6, 607, 493, 18.04, 2.82, 10, 'EUR', 180.4, 2),
(6, 949, 247, 93.88, 9.48, 18, 'USD', 1689.84, 1),
(36, 596, 299, 3.13, 7.59, 6, 'USD', 18.78, 2),
(47, 302, 179, 93.65, 1.54, 1, 'EUR', 93.65, 2),
(87, 774, 443, 76.62, 2.42, 2, 'EUR', 153.24, 1),
(4, 784, 174, 31.63, 5.6, 8, 'EUR', 253.04, 3),
(80, 766, 382, 65.97, 7.62, 20, 'GBP', 1319.4, 99),
(47, 855, 367, 51.9, 8.76, 7, 'USD', 363.3, 2),
(34, 749, 251, 29.63, 2.01, 2, 'USD', 59.26, 1),
(19, 649, 254, 14.69, 2.39, 12, 'USD', 176.28, 3),
(8, 441, 247, 72.78, 3.87, 10, 'USD', 727.8, 2),
(27, 434, 423, 47.71, 4.17, 12, 'USD', 572.52, 99),
(99, 534, 179, 18.75, 8.42, 11, 'USD', 206.25, 99),
(90, 441, 217, 86.87, 5.91, 20, 'GBP', 1737.4, 99),
(88, 508, 415, 51.29, 1.65, 10, 'USD', 512.9, 3),
(57, 622, 279, 6.1, 1.27, 14, 'USD', 85.4, 2),
(17, 673, 422, 78.07, 7.66, 4, 'USD', 312.28, 3),
(88, 789, 251, 30.84, 7.23, 13, 'EUR', 400.92, 2),
(87, 441, 331, 13.74, 8.92, 9, 'USD', 123.66, 1),
(45, 988, 242, 36.73, 6.84, 14, 'EUR', 514.22, 1),
(23, 895, 414, 26.67, 8.44, 10, 'USD', 266.7, 3),
(87, 712, 279, 13.48, 6.92, 10, 'USD', 134.8, 1),
(68, 803, 246, 2.2, 6.09, 7, 'USD', 15.4, 3),
(85, 621, 251, 3.19, 0.23, 2, 'USD', 6.38, 2),
(68, 627, 251, 22.67, 1.42, 15, 'USD', 340.05, 2),
(84, 508, 456, 49.3, 6.72, 2, 'GBP', 98.6, 2),
(3, 730, 175, 22.58, 2.91, 13, 'USD', 293.54, 2),
(45, 930, 179, 93.7, 7.15, 6, 'USD', 562.2, 1),
(26, 627, 174, 17.17, 8.76, 9, 'USD', 154.53, 3),
(66, 982, 331, 37.38, 0.48, 1, 'USD', 37.38, 2),
(14, 758, 264, 71.08, 9.14, 1, 'EUR', 71.08, 2),
(87, 826, 299, 92.82, 1.4, 14, 'USD', 1299.48, 2),
(99, 452, 422, 80.67, 5.68, 19, 'USD', 1532.73, 3),
(52, 342, 119, 54.87, 2.09, 20, 'USD', 1097.4, 3),
(69, 408, 452, 49.98, 4.47, 14, 'USD', 699.72, 99),
(65, 571, 303, 22.79, 8.1, 2, 'EUR', 45.58, 2),
(20, 826, 367, 65.96, 8.27, 10, 'USD', 659.6, 3),
(44, 891, 435, 26.4, 1.75, 20, 'EUR', 528.0, 99),
(60, 649, 246, 73.66, 7.91, 16, 'USD', 1178.56, 3),
(14, 571, 142, 56.18, 8.9, 7, 'USD', 393.26, 3),
(33, 955, 314, 72.38, 1.61, 2, 'GBP', 144.76, 99),
(46, 980, 299, 3.68, 8.21, 3, 'USD', 11.04, 2),
(8, 972, 423, 80.72, 6.9, 9, 'USD', 726.48, 2),
(77, 451, 379, 33.57, 1.64, 2, 'USD', 67.14, 1),
(3, 673, 279, 77.33, 9.14, 1, 'EUR', 77.33, 2),
(79, 356, 328, 83.03, 7.95, 13, 'EUR', 1079.39, 3),
(6, 323, 279, 16.1, 1.51, 4, 'USD', 64.4, 2),
(59, 412, 242, 31.89, 2.2, 13, 'EUR', 414.57, 2),
(44, 766, 413, 92.97, 7.88, 5, 'USD', 464.85, 2),
(37, 624, 299, 38.18, 3.94, 14, 'EUR', 534.52, 2),
(87, 627, 413, 72.33, 9.47, 13, 'USD', 940.29, 3),
(43, 508, 288, 75.8, 8.19, 18, 'GBP', 1364.4, 2),
(26, 513, 198, 63.66, 9.08, 1, 'USD', 63.66, 99),
(12, 880, 328, 38.58, 6.9, 9, 'USD', 347.22, 2),
(81, 445, 414, 78.87, 1.93, 1, 'USD', 78.87, 2),
(17, 856, 288, 16.14, 5.14, 17, 'USD', 274.38, 2),
(85, 741, 435, 40.79, 6.57, 15, 'EUR', 611.85, 1),
(18, 447, 142, 22.44, 2.18, 5, 'USD', 112.2, 2),
(37, 641, 493, 51.33, 3.78, 8, 'USD', 410.64, 2),
(73, 986, 142, 8.08, 6.36, 8, 'EUR', 64.64, 3),
(95, 728, 254, 16.18, 5.18, 18, 'USD', 291.24, 3),
(76, 541, 319, 7.24, 6.25, 4, 'USD', 28.96, 3),
(60, 342, 415, 30.33, 0.7, 8, 'GBP', 242.64, 2),
(97, 761, 251, 13.34, 7.84, 1, 'EUR', 13.34, 2),
(58, 377, 493, 59.1, 4.38, 8, 'EUR', 472.8, 2),
(56, 728, 219, 6.28, 6.03, 10, 'USD', 62.8, 2),
(1, 857, 217, 70.09, 1.25, 13, 'USD', 911.17, 1),
(43, 440, 401, 8.74, 9.88, 13, 'USD', 113.62, 2),
(53, 768, 494, 23.2, 9.88, 11, 'GBP', 255.2, 1),
(22, 530, 251, 83.14, 3.92, 14, 'EUR', 1163.96, 1),
(46, 988, 415, 69.88, 7.8, 17, 'GBP', 1187.96, 2),
(38, 909, 423, 30.36, 5.93, 18, 'USD', 546.48, 2),
(9, 891, 119, 2.09, 7.27, 5, 'USD', 10.45, 3),
(88, 857, 264, 16.15, 9.98, 13, 'EUR', 209.95, 2),
(35, 356, 179, 92.65, 9.74, 9, 'EUR', 833.85, 2),
(54, 833, 468, 92.31, 5.06, 17, 'USD', 1569.27, 99),
(22, 364, 379, 26.66, 0.08, 1, 'GBP', 26.66, 2),
(8, 843, 198, 7.01, 2.63, 14, 'GBP', 98.14, 2),
(7, 750, 288, 42.29, 6.88, 11, 'USD', 465.19, 99),
(77, 363, 468, 91.29, 2.01, 16, 'EUR', 1460.64, 2),
(61, 986, 175, 84.09, 8.86, 9, 'EUR', 756.81, 3),
(44, 780, 174, 37.45, 8.06, 9, 'EUR', 337.05, 2),
(31, 959, 142, 9.87, 3.66, 18, 'USD', 177.66, 2),
(86, 728, 397, 32.21, 1.29, 6, 'USD', 193.26, 2),
(31, 891, 246, 45.13, 7.58, 4, 'USD', 180.52, 2),
(5, 597, 328, 86.23, 6.98, 10, 'GBP', 862.3, 2),
(20, 363, 468, 52.09, 0.31, 9, 'EUR', 468.81, 1),
(57, 443, 288, 57.72, 6.21, 18, 'GBP', 1038.96, 1),
(69, 761, 367, 74.86, 2.46, 18, 'USD', 1347.48, 1),
(8, 302, 414, 53.23, 1.91, 16, 'USD', 851.68, 2),
(25, 886, 397, 25.92, 0.53, 5, 'USD', 129.6, 2),
(47, 664, 242, 61.2, 1.63, 1, 'EUR', 61.2, 3),
(85, 804, 414, 89.08, 0.42, 9, 'USD', 801.72, 2),
(27, 416, 198, 23.52, 3.13, 20, 'EUR', 470.4, 2),
(14, 302, 331, 22.57, 9.31, 11, 'USD', 248.27, 3),
(43, 830, 452, 30.18, 0.26, 3, 'GBP', 90.54, 2),
(31, 541, 139, 45.39, 4.53, 16, 'EUR', 726.24, 1),
(7, 789, 109, 2.03, 7.1, 18, 'USD', 36.54, 1),
(80, 743, 415, 21.69, 5.63, 4, 'USD', 86.76, 2),
(23, 536, 303, 9.07, 1.28, 10, 'GBP', 90.7, 2),
(9, 907, 423, 60.86, 8.28, 14, 'USD', 852.04, 99),
(9, 885, 443, 72.88, 5.11, 6, 'USD', 437.28, 1),
(26, 645, 379, 6.57, 6.1, 12, 'USD', 78.84, 2),
(52, 972, 109, 85.04, 5.55, 19, 'EUR', 1615.76, 99),
(60, 978, 179, 13.09, 2.34, 1, 'EUR', 13.09, 2),
(77, 311, 279, 32.46, 6.96, 1, 'USD', 32.46, 1),
(94, 657, 251, 6.57, 7.9, 12, 'USD', 78.84, 1),
(84, 761, 139, 19.93, 0.54, 12, 'USD', 239.16, 1),
(31, 826, 413, 26.21, 0.48, 8, 'EUR', 209.68, 2),
(72, 641, 290, 64.96, 3.36, 4, 'GBP', 259.84, 3),
(76, 410, 359, 25.69, 7.18, 6, 'GBP', 154.14, 2),
(41, 489, 179, 45.64, 1.73, 1, 'USD', 45.64, 1),
(2, 980, 119, 70.86, 6.46, 1, 'USD', 70.86, 2),
(40, 758, 456, 26.83, 5.59, 17, 'EUR', 456.11, 2),
(99, 318, 443, 21.42, 7.54, 10, 'USD', 214.2, 2),
(26, 656, 279, 16.3, 9.59, 19, 'USD', 309.7, 99),
(25, 441, 452, 63.33, 2.55, 19, 'GBP', 1203.27, 2),
(59, 743, 242, 47.59, 7.87, 7, 'USD', 333.13, 1),
(24, 508, 219, 14.52, 7.18, 6, 'USD', 87.12, 2),
(44, 536, 254, 11.53, 1.23, 8, 'USD', 92.24, 3),
(76, 578, 314, 84.03, 2.51, 5, 'USD', 420.15, 3),
(88, 673, 254, 11.02, 9.82, 18, 'USD', 198.36, 2),
(68, 753, 468, 11.95, 8.85, 18, 'USD', 215.1, 1),
(82, 604, 379, 64.51, 4.79, 10, 'USD', 645.1, 2),
(11, 826, 435, 20.75, 7.71, 15, 'EUR', 311.25, 99),
(57, 441, 422, 35.25, 0.38, 12, 'GBP', 423.0, 2),
(96, 856, 413, 77.76, 3.99, 12, 'USD', 933.12, 1),
(89, 904, 111, 91.98, 3.31, 5, 'USD', 459.9, 2),
(43, 326, 435, 9.19, 5.42, 10, 'USD', 91.9, 2),
(37, 826, 288, 47.75, 4.2, 9, 'USD', 429.75, 2),
(48, 780, 219, 24.25, 3.19, 9, 'EUR', 218.25, 2),
(32, 323, 331, 47.35, 9.89, 2, 'USD', 94.7, 2),
(71, 427, 468, 66.31, 6.59, 4, 'GBP', 265.24, 2),
(85, 730, 422, 83.74, 3.89, 15, 'GBP', 1256.1, 1),
(80, 334, 119, 85.43, 5.25, 4, 'EUR', 341.72, 99),
(60, 470, 423, 74.1, 5.86, 4, 'GBP', 296.4, 2),
(36, 804, 251, 90.06, 2.84, 2, 'USD', 180.12, 2),
(24, 410, 242, 6.16, 4.5, 10, 'USD', 61.6, 1),
(66, 682, 299, 55.48, 5.7, 7, 'USD', 388.36, 1),
(65, 986, 139, 68.71, 0.03, 18, 'EUR', 1236.78, 2),
(69, 930, 288, 67.15, 5.92, 1, 'USD', 67.15, 2),
(14, 980, 319, 53.73, 3.07, 12, 'USD', 644.76, 99),
(42, 527, 359, 84.37, 3.13, 7, 'EUR', 590.59, 99),
(32, 773, 242, 49.96, 2.54, 7, 'GBP', 349.72, 3),
(39, 633, 414, 87.04, 9.46, 18, 'GBP', 1566.72, 1),
(96, 513, 331, 78.23, 9.99, 10, 'GBP', 782.3, 3),
(86, 308, 290, 90.58, 3.74, 13, 'EUR', 1177.54, 3),
(44, 912, 175, 14.12, 2.49, 5, 'EUR', 70.6, 2);

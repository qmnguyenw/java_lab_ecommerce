USE [master]
GO
DROP DATABASE [ecommerce]
GO
CREATE DATABASE [ecommerce]
GO
USE [ecommerce]
GO

CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[name] [nvarchar](255) NOT NULL,
    [image_url] [nvarchar](255) NOT NULL,
	[price] [money] NOT NULL DEFAULT 0,
)
--description

CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[name] [nvarchar](255) NOT NULL,
)

CREATE TABLE [dbo].[Count](
	[visit] int NOT NULL DEFAULT 0,
)

INSERT [dbo].[Count] ([visit]) VALUES (40)

INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('OnePlus Nord CE 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/o/n/one_plus-1_2.jpg',7990000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Oneplus Nord N10 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/o/n/one_plus.png',5840000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('OnePlus 8T 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/o/n/oneplus-8t-600x600-1-200x200.jpg',15990000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A52','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a52-26.jpg',8100000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A72','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a72-30.jpg',10300000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A32','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a32-20.jpg',6150000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A12','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a12_2_.jpg',3750000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Note 20 Ultra 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/y/e/yellow_final_2.jpg',19990000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy S20 FE 256GB (Fan Edition)','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-20-fe_4_.jpg',13150000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy S21 Ultra 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-s21-ultra-1_1.jpg',25100000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy S21 Plus 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-s21-plus-3.jpg',20400000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Note 20 Ultra','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/b/l/black_final.jpg',18990000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A22','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/a/2/a22-2.jpg',5200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Note 20','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/m/i/mint_final.jpg',15000000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Z Fold2 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/g/a/galaxy-z-fold2-5g-1.jpg',46500000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy S20 Ultra','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/6/3/637170935875912528_ss-s20-ultra-den-1.png',16000000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A02s','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-galaxy-a02s-1.jpg',3350000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Z Fold2 5G (Phiên bản mùa hè)','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/g/a/galaxy-z-fold2-5g-1_3_3.jpg',50000000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Z Fold2 5G (Phiên bản mùa xuân)','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/g/a/galaxy-z-fold2-5g-1_3.jpg',46500000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy Note 10 Lite','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/2/0/2026427-removebg-preview.png',10500000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Samsung Galaxy A11','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/3/_/3_48_28.jpg',2650000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 11','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/l/a/layer_20.jpg',14700000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 12 Pro Max','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12-pro-max_1__7_1.jpg',29200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 12','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12_2__3.jpg',18800000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 11 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/l/a/layer_20_1.jpg',16300000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 12 Pro','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12-pro-max_3__9.jpg',26700000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone XR 64GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/a/p/apple-iphone-xr-64-gb-chinh-hang-vn_3_.jpg',12000000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 12 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12_7__6_3.jpg',20700000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 12 mini','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12_7__6_1.jpg',15600000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone 12 Pro Max 256GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone-12-pro-max_3__5.jpg',32000000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('iPhone XR 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/a/p/apple-iphone-xr-64-gb-chinh-hang-vn_1__1.jpg',13200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10 Pro 8GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2_.png',6850000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-note-10-5g.jpg',4900000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10 Pro 6GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro_2__2.png',6450000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10S','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10s-xanh-1.jpg',5750000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Mi 11 Lite 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-11-lite-5g-2_10.png',8490000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10_1.jpg',5000000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10 4GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10_1_2.jpg',4250000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi 9T 6GB 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-9t_1_.jpg',3750000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Mi 11 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-11-xanhduong-600x600-600x600.jpg',15200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi 9T 4GB 64GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-9t_1__2.jpg',3150000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi 9A','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi_9a_0005_background.jpg',1900000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi POCO X3 NFC 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-poco-x3_2_.jpg',5700000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Mi 10T Pro 5G','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-10t-pro_2_.jpg',11200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Mi 10T Pro 5G 8GB 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-10t-pro_2__3.jpg',10200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi 9C 3GB - 64GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi-9c_3__1_2.jpg',2450000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 10 Pro ( Phiên bản Mi Fan Festival)','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-redmi-note-10-pro-mi-fan-festival.jpg',6850000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Mi 11 5G 128GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-11-128gb-1.jpg',14200000)
INSERT [dbo].[Product]([name], [image_url], [price]) VALUES ('Xiaomi Redmi Note 9s 4G 64GB','https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/9df78eab33525d08d6e5fb8d27136e95/r/e/redmi_note_9s_0002_layer_1.jpg',4450000)

SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) AS rn , * FROM  Product ) AS b WHERE rn BETWEEN ? AND ?
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as RowNumber, * FROM [Product] WHERE name LIKE ?) as AllData where AllData.RowNumber between ? and ?
SELECT [visit] FROM [Count]
SELECT * FROM Product 
SELECT * FROM Product WHERE name LIKE '%iPhone%'
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) AS rn , * FROM  Product ) AS b WHERE rn BETWEEN 4 AND 9
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as RowNumber, * FROM [Product] WHERE 1=1) as AllData where AllData.RowNumber between 4 and 9
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as RowNumber, * FROM [Product] WHERE name LIKE '%iPhone%') as AllData where AllData.RowNumber between 4 and 9
SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY id ASC) as RowNumber, * FROM [Product]) as AllData where AllData.RowNumber between 1 and 4

## usersテーブル

|Column|type|option|
|------|----|------|
|gender|string|null: false|
|birth|stirng|null: false|
|adress|string|null: false|
|email|string|null: false|
|password|integer|null: false|

## Association
- has_many :items
- has_many :orders
- has_many :favorites
-

## orderテーブル
|Column|type|option|
|------|----|------|
|name|string|null: false|
|postal_code|integer|null: false|
|adress|text|null: false|
|tel|integer|null: false|
|check_out|select|null: false|

## Association
- belongs_to :user


## categoryテーブル
|Column|type|option|
|------|----|------|
|name|string|null: false|

## Association
- has_many :items

## itemsテーブル
|Column|type|option|
|------|----|------|
|name|string|null: false|
|body|text|------|
|image|text|------|
|price|string|null: false|

## Association
- belongs_to :category
- bolongs_to :user
- belongs_to :item cart
- has_many :image

## item cartsテーブル
|Column|type|option|
|------|----|------|
|name|string|null: false|

## Association
- has_many :items
- belongs_to :user
- has_many :purchase, through: datails

## purchaseテーブル
|Column|type|option|
|------|----|------|
|code|integer|null: false|

## Association
- has_many :item_cart, through: details

## detailsテーブル
|Column|type|option|
|------|----|------|
|item_cart_id|integer|null: false, foreign_key :true|
|purchase_id|integer|null: false, foreign_key :true|

## Association
- belongs_to :item_cart
- belongs_to :purchase

favaritesテーブル
||Column|type|option|
|------|----|------|
|item|string|null: false|
|brand|string|null: false|
|shop|string|null: false|

## Association
- belongs_to :user

## imageテーブル
|Column|type|option|
|------|----|------|
|image|string|null: false|
|item_id|integer|null: false, foreign_key: true|

## Association
- belongs_to :item
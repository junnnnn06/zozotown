## usersテーブル

|Column|type|option|
|------|----|------|
|name|string|null: false|
|adress|string|null: false|
|email|string|null: false|
|password|integer|null: false|

## Association
- has_many :items
- has_many :orders
- has_many :favorites

## orderテーブル
|Column|type|option|
|------|----|------|
|user_id|integer|null: false|
|item_id|integer|null: false|
|item_image|text|null: false|
|item_name|integer|null: false|
|item_price|select|null: false|

## Association
- belongs_to :user
- has_many :items

## itemsテーブル
|Column|type|option|
|------|----|------|
|name|string|null: false|
|body|text|------|
|image|text|------|
|price|integer|null: false|
|description|text|------|
|count|integer|null: false|
|number|integer|null: false, unique: true|

## Association
- belongs_to :category
- belongs_to :user
- belongs_to :order

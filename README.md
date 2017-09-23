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
- has_many :reviews
- has_many :likes

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
- belongs_to :item

## itemsテーブル
|Column|type|option|
|------|----|------|
|name|string|null: false|
|image|text|------|
|price|integer|null: false|
|description|text|------|
|count|integer|null: false|
|number|integer|null: false, unique: true|
|popular|integer|------|
|recommend|integer|------|
|likes_count|integer|------|

## Association
- has_many :orders
- has_many :reviews
- belongs_to :user, optional: true
- has_many :likes, dependent: :destroy

## reviewテーブル
|Column|type|option|
|------|----|------|
|review|text|null: false|
|starrate|integer|null: false|
|user_id|integer|null: false|
|item_id|integer|null: false|

## Association
  belongs_to :user
  belongs_to :item

## likesテーブル
|Column|type|option|
|------|----|------|
|user_id|integer|null: false|
|item_id|integer|null: false|

## Association
- belongs_to :item
- belongs_to :user

## usersテーブル

|Column|type|option|
|------|----|------|
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

favaritesテーブル
||Column|type|option|
|------|----|------|
|item|string|null: false|
|brand|string|null: false|
|shop|string|null: false|

## Association
- belongs_to :user

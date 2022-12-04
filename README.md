# テーブル設計

## admin テーブル

|Column              |Type    |Options        |
|--------------------|--------|---------------|
| email              | string | null:false    |
| encrypted_password | string | null:false    |


## users テーブル

|Column              |Type    |Options        |
|--------------------|--------|---------------|
| nick_name          | string | null:false    |
| family_name        | string | null:false    |
| first_name         | string | null:false    |
| family_name_kana   | string | null:false    |
| first_name_kana    | string | null:false    |
| email              | string | null:false    |
| encrypted_password | string | null:false    |

- has_many :orders
- has_many :carts
- has_many :items, through :carts

## items テーブル

|Column              |Type     |Options        |
|--------------------|-------- |---------------|
| item_name          | string  | null:false    |
| item_description   | text    | null:false    |
| item_price         | integer | null:false    |
| item_category_id   | integer | null:false    |
| shrimp_id          | integer |               |
| crab_id            | integer |               |
| wheat_id           | integer |               |
| soba_id            | integer |               |
| egg_id             | integer |               |
| dairy_id           | integer |               |
| peanut_id          | integer |               |
| almond_id          | integer |               |
| abalone_id         | integer |               |
| squid_id           | integer |               |
| salmon_roe_id      | integer |               |
| orange_id          | integer |               |
| cashew_nuts_id     | integer |               |
| kiwi_fruit_id      | integer |               |
| beef_id            | integer |               |
| walnut_id          | integer |               |
| sesame_id          | integer |               |
| salmon_id          | integer |               |
| mackerel_id        | integer |               |
| soy_id             | integer |               |
| chicken_id         | integer |               |
| banana_id          | integer |               |
| pork_id            | integer |               |
| matsutake_id       | integer |               |
| peach_id           | integer |               |
| yam_id             | integer |               |
| apple_id           | integer |               |
| gelatin_id         | integer |               |

- has_many :carts
- has_many :order_items
- has_many :orders, through :order_items
- has_many :users, through :carts

## carts テーブル

|Column          |Type        |Options                        |
|----------------|------------|-------------------------------|
| cart_quantity  | integer    | null:false                    |
| user           | references | null:false, foreign_key: true |
| item           | references | null:false, foreign_key: true |

- belongs_to :user
- belongs_to :item

## orders テーブル

|Column              |Type     |Options        |
|--------------------|-------- |---------------|
| postal_cod         | string  | null:false    |
| prefecture_id      | integer | null:false    |
| city               | string  | null:false    |
| block              | string  | null:false    |
| building           | string  |               |
| phone_number       | string  | null:false    |
| order_price        | integer | null:false    |

- belongs_to :user
- has_many :order_items
- has_many :items, though :order_items

## order_items テーブル

|Column    |Type        |Options                        |
|----------|------------|-------------------------------|
| quantity | integer    | null:false                    |
| user     | references | null:false, foreign_key: true |
| item     | references | null:false, foreign_key: true |

- belongs_to :user
- belongs_to :item


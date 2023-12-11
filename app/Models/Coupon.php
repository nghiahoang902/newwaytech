<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Coupon extends Model
{
    protected $table = 'coupons';

    protected $guarded = [];

    public function products() {
        return $this->belongsToMany(CmsProduct::class, 'coupon_product', 'coupon_id', 'product_id');
    }
}

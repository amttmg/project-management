<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class OwnerCompany extends Model
{
    protected $table = 'owner_company';

    public $timestamps = false;

    protected $fillable = [
        'name',
        'logo',
        'address',
        'postal_code',
        'city',
        'country_id',
        'currency_id',
        'email',
        'phone',
        'web',
        'iban',
        'swift',
        'business_id',
        'tax_id',
        'vat',
        'tax',
    ];

    public function country(): BelongsTo
    {
        return $this->belongsTo(Country::class);
    }

    public function currency(): BelongsTo
    {
        return $this->belongsTo(Currency::class);
    }
}

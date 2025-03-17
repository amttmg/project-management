<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectStatus extends Model
{
    use HasFactory;

    public function projects()
    {
        return $this->hasMany(Project::class, 'status');
    }

    public static function dropdownValues($options = []): array
    {
        return self::orderBy('name')
            ->get(['id', 'name'])
            ->map(fn($i) => ['value' => (string) $i->id, 'label' => $i->name])
            ->toArray();
    }
}
